# this file imports some js-native components for use in reactive-ruby
# note that assigning a symbol to constants is a bit hacky but whatever.
# the alternative would be to use e.g. :Spinner everywhere

React::API.import_native_component(:Spinner, `Spinner`)
Spinner = :Spinner
