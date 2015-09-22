module Pottify
  class Counter
    include React::Component

    define_state(:count) { 0 }

    def handle_click
      self.count += 1
    end

    def render
      div do
        h1 { "#{self.count}" }.on(:click) { handle_click }
        present Spinner
      end
    end
  end
end
