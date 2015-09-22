module Pottify
  class Counter
    include React::Component

    define_state(:count) { 0 }

    def handle_click
      set_state count: count + 1
    end

    def render
      div do
        button { "#{self.count}" }.on(:click) { handle_click }
        present Spinner
      end
    end
  end
end
