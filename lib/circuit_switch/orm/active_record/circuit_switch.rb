module CircuitSwitch
  class CircuitSwitch < ::ActiveRecord::Base
    def watching?
      report_count < switch_off_count
    end

    def increment
      with_writable { update(report_count: report_count + 1) }
    end

    private

    def with_writable
      if ApplicationRecord.respond_to?(:with_writable)
        ApplicationRecord.with_writable { yield }
      else
        yield
      end
    end
  end
end
