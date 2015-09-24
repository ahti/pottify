module Pottify
  class List
    include React::Component
    def initialize(native)
        @native = Native(native)
    end

    def render
      ul do
        @native[:props][:feeds].each do |i|
          present FeedListItem, model: i
        end
      end
    end
  end
end
