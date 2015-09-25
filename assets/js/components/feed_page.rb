module Pottify
    class FeedPage
      include React::Component
      
      attr_accessor :model
      def initialize(native)
        @native = Native(native)
        @model = @native[:props][:model]
      end

      def render
        div do 
          h2 {@model.name}
          present Semantic::ActiveLoader
          div(class_name: "feed-details")   
        end
      end
    end
    class FeedPageDetails
    end
end
