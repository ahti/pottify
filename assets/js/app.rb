require 'opal'
require 'react'
require 'js/counter'

React.render(React.create_element(Pottify::Counter), `document.getElementById('root')`)
