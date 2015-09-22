require 'opal'
require 'reactive-ruby'
require 'js/counter'

puts "app starting up"

React::API.import_native_component(:Spinner, `Spinner`)
Spinner = :Spinner

React.render(React.create_element(Pottify::Counter), `document.getElementById('root')`)
#React.render(React.create_element(Spinner), `document.getElementById('root')`)
