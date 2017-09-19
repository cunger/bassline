require 'rspec'
require 'rack/test'

ENV['RACK_ENV'] = 'test'

require_relative '../main'

module RSpecMixin
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end
end

RSpec.configure do |config|
  config.include RSpecMixin
  config.default_formatter = 'doc'
end
