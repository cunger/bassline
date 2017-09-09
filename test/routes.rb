ENV['RACK_ENV'] = 'test'

require_relative '../main'

require 'minitest/autorun'
require 'rack/test'
require 'simplecov'
SimpleCov.start

class AppTest < Minitest::Test
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  # def setup
  # end
  #
  # def teardown
  # end

  def test_landing_page
    get '/'
    assert last_response.ok?
  end
end
