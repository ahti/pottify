require 'opal'
require 'opal-browser'
require 'react'
require 'js/counter'

# Workaround for opal bug
require 'react/ext/string'

React.render(React.create_element(Pottify::Counter), `document.getElementById('root')`)
