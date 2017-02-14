require "bundler/setup" # require all the gems we'll be using for this app from the Gemfile. Obviates the need for `bundle exec`
require "pg" # postgres db library
require "active_record" # the ORM
require "pry" # for debugging
require 'sinatra'
require 'sinatra/reloader'

require_relative "db/connection" # require the db connection file that connects us to PSQL, prior to loading models
require_relative "models/pokemon"


get '/' do
  redirect '/pokemons'
end

get '/pokemons' do

end

# This will put us into a state of the pry REPL, in which we've established a connection
# with the tunr_db database and have defined the Artist Class as an
# ActiveRecord::Base class.
