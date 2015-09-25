module Semantic
  class ActiveLoader
    include React::Component
    attr_accessor :text

    def initialize(native)
      @text = Native(native)[:props][:text] || ""
    end

    def render
      div(class_name: "ui active loader") { @text }
    end
  end
end
