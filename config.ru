require 'rubygems'
require 'bundler/setup'

require 'sprockets'
require 'sprockets/es6'
require 'opal'
require 'react'
require './app.rb'

map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path 'assets'
  Opal.paths.each { |p| environment.append_path p }
  run environment
end

map '/' do
  run PottifyApp
end
