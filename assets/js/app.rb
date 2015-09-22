require 'opal'
require 'browser'
require 'browser/http'
require 'react'
require 'js/counter'

# Workaround for opal bug
require 'react/ext/string'

Browser::HTTP.get "/feeds" do
  on :success do |res|
    alert res.json.inspect
  end
end

React.render(React.create_element(Pottify::Counter), `document.getElementById('root')`)

