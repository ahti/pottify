require 'rubygems'
require 'bundler/setup'

require 'sprockets'
require 'sprockets/es6'
require './app.rb'

map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path 'assets'
  run environment
end

map '/' do
  run PottifyApp
end
