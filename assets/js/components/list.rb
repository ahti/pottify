module Pottify
  class List
    include React::Component

    define_state(:feeds) {["Testfeed1", "testfeed2"]}

    def render
      ul do
        self.feeds.each do |i|
          li { "#{i}" }
          # present FeedListItem
        end
      end
    end
  end
end
