require 'sinatra/base'

class PottifyApp < Sinatra::Base
  get '/' do
    'Hello world!'
  end
end
