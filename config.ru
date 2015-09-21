require 'rubygems'
require 'bundler/setup'

require 'sprockets'
require './app.rb'

map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path 'assets/javascripts'
  environment.append_path 'assets/stylesheets'
  run environment
end

map '/' do
  run PottifyApp
end
