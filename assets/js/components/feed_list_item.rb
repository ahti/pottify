module Pottify
  class FeedListItem
    include React::Component
    params do 
      requires :model, type: Pottify::FeedItemModel
    end

    def render
      model = self.params[:model]
      li do 
        a(href: "#/feeds/#{model.id}") { "#{model}" }
      end
    end
  end
end
