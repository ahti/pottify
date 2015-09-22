require 'sinatra/base'
require 'sinatra/json'

class PottifyApp < Sinatra::Base
  get '/' do
    erb :index, format: :html5
  end

  get '/feeds' do
    json [{name: "Thsi feed", id: 20}, {name: "My special feed", id: 21}]
  end
end
