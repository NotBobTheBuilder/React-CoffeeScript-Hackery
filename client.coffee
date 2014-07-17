React = require 'React'
Router = require 'react-router-component'

{html, head, title, h1, div, p} = React.DOM
{Page, Pages} = Router

Home = React.createClass
  render: ->
    div {},
      h1 {}, 'Some react stuff'
      p {}, 'Honestly this is cool'

module.exports = React.createClass
  render: ->
    html {},
      head {},
        title {}, 'Super kickass page'
      Pages {path: @props.path},
        Page
          path: '/'
          handler: Home
