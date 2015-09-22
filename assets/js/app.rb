require 'opal'
require 'reactive-ruby'

require 'js/native_components'
require 'js/counter'

require 'browser'
require 'browser/http'

Browser::HTTP.get "/feeds" do
  on :success do |res|
    alert res.json.inspect
  end
end

React.render(React.create_element(Pottify::Counter), `document.getElementById('root')`)
