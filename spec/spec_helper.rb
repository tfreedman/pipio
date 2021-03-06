require 'simplecov'

$LOAD_PATH.unshift(File.expand_path('..',  __FILE__))
$LOAD_PATH.unshift(File.expand_path('../lib', __FILE__))

require 'fileutils'
require 'pipio'
require 'mocha/api'

Dir['spec/support/**/*.rb'].each { |f| require File.expand_path(f) }

SPEC_ROOT = File.dirname(__FILE__)

RSpec.configure do |config|
  config.mock_with :mocha

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
