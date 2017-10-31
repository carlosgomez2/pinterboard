ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'


# Improved Minitest output (color and progress bar)
require "minitest/reporters"
Minitest::Reporters.use!(
  Minitest::Reporters::ProgressReporter.new(:color => true),
  Minitest::Reporters::MeanTimeReporter.new(:color => true),
  ENV,
  Minitest.backtrace_filter)

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
