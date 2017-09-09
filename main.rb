require 'sinatra'
require 'sinatra/reloader' if development?

configure do
  set :sessions, true
  set :session_secret, ENV.fetch('SESSION_SECRET') { SecureRandom.hex(64) }
end

#### Routes ####

get '/' do
  haml :index
end

#### Helpers ####

helpers do
  def current_flash_message
    session.delete(:flash) || ''
  end
end
