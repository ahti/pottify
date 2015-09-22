module Pottify
  class Counter
    include React::Component

    define_state(:count) { 0 }

    def handle_click
      set_state count: count + 1
    end

    def render
      h1 { "#{self.count}" }.on(:click) { handle_click }
    end
  end
end
