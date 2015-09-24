require 'opal'
require 'reactive-ruby'

require 'js/native_components'
require 'js/counter'

require 'browser'
require 'browser/http'

require 'vienna'

require 'js/components/feed_list'
require 'js/components/feed_list_item'

require 'js/models/feed_model'

Browser::HTTP.get "/feeds" do
  on :success do |res|
    feeds = FeedListModel.deserialize(res.json)
    React.render(React.create_element(Pottify::List, feeds: feeds), `document.getElementById('root')`)
  end
end


# React.render(React.create_element(Pottify::Counter), `document.getElementById('root')`)
