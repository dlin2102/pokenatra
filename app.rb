require "bundler/setup" # require all the gems we'll be using for this app from the Gemfile. Obviates the need for `bundle exec`
require "pg" # postgres db library
require "active_record" # the ORM
require "pry" # for debugging
require 'sinatra'
require 'sinatra/reloader'

require_relative "db/connection"
require_relative "models/pokemon"

get '/pokemons' do
  @pokemons = Pokemon.all
  erb :"pokemons/index"
end

get '/' do
  redirect '/pokemons'
end

get '/pokemons/:id' do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemons/show"
end
