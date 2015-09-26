module Semantic
  class ActiveLoader
    include React::Component

    params do 
      optional :text, default: ""
    end

    def render
      div(class_name: "ui active loader") { self.params[:text] }
    end
  end
end
