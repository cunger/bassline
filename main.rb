require 'sinatra'
require 'sinatra/reloader' if development?

configure do
  enable :sessions
  set :session_secret, ENV['SESSION_SECRET']
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
