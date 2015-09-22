require 'sinatra/base'

class PottifyApp < Sinatra::Base
  get '/' do
    erb :index, format: :html5
  end
end
