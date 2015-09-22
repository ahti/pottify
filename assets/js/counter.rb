module Pottify
  class Counter
    include React::Component

    define_state(:count) { 0 }

    def handle_click
      self.count += 1
    end

    def render
      div do
        h1 { "#{self.count}" }
        present Spinner
      end.on(:click) { handle_click }
    end
  end
end
