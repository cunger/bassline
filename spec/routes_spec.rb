require 'rspec'
require 'simplecov'
SimpleCov.start

require_relative 'spec_helper'

describe 'Application' do
  describe 'The landing page' do
    it 'should be ok' do
      get '/'
      expect(last_response).to be_ok
      expect(last_response.body).to include "Hello world!"
    end
  end
end
