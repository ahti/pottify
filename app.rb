require 'sinatra/base'
require 'sinatra/json'

class PottifyApp < Sinatra::Base
  get '/' do
    erb :index, format: :html5
  end

  get '/feeds' do
    sleep 0.5
    json [{name: "Thsi feed", id: 20}, {name: "My special feed", id: 21}]
  end

  get '/feeds/:id' do |id|
    json name: "This is a gneric title", id: id
  end
end
