require 'rubygems'
require 'bundler/setup'

require 'sprockets'
require 'sprockets/es6'
require 'opal'
require 'reactive-ruby'
require './app.rb'

map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path 'assets'
  environment.append_path 'vendor/assets'
  Opal.paths.each { |p| environment.append_path p }
  run environment
end

map '/' do
  run PottifyApp
end
