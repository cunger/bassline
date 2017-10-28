require 'dotenv'
Dotenv.load

require 'sinatra'
require 'sysrandom/securerandom'

configure do
  enable :sessions
  set :session_secret, ENV.fetch('SESSION_SECRET') { SecureRandom.hex(64) }
end

configure(:development) do
  require 'sinatra/reloader'
  # And, for example:
  # also_reload 'lib/database_connection.rb'
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
