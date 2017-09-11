require 'dotenv'
Dotenv.load

require 'sinatra'
require 'sinatra/reloader' if development?
require 'sysrandom/securerandom'

configure do
  enable :sessions
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
