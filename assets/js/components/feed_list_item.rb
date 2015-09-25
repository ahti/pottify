module Pottify
  class FeedListItem
    include React::Component

    def initialize(native)
      @native = Native(native)
      @model = @native[:props][:model]
    end

    def render
      li do 
        a(href: "#/feeds/#{@model.id}") { "#{@model}" }
      end
    end
  end
end
