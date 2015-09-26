module Pottify
  class List
    include React::Component

    params do
      requires :feeds, type: Pottify::FeedListModel
    end

    def render
      ul do
        self.params[:feeds].each do |i|
          present FeedListItem, model: i
        end
      end
    end
  end
end
