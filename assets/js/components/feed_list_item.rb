module Pottify
  class FeedListItem
    include React::Component

    def initialize(native)
      @native = Native(native)
    end

    def render
      li { "#{@native[:props][:model]}" }
    end
  end
end
