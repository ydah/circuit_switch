# frozen_string_literal: true

CircuitSwitch.configure do |config|
  # Specify proc to call your report tool: like;
  # config.reporter = -> (message) { Bugsnag.notify(message) }
  config.reporter = nil

  # Allowed paths to report
  # CircuitSwitch recognizes logic as unique that first match with these paths
  # config.report_paths = [Rails.root]

  # Option to contain error backtrace for report
  # You don't need backtrace when you report to some bug report tool.
  # You may be want backtrace when report to plain feed; e.g. Slack or email.
  # config.with_backtrace = false
end
