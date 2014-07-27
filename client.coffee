React = require 'React'
Router = require 'react-router-component'

{html, head, title, h1, div, p, script} = React.DOM
{Page, Pages, Link} = Router

Person = React.createClass
  render: ->
    div {},
      h1 {}, @props.name

Home = React.createClass
  render: ->
    div {},
      h1 {}, 'Some react stuff'
      p {}, 'Honestly this is cool'
      Link {href: '/people/bob'}, 'bob'

module.exports = React.createClass
  render: ->
    html {},
      head {},
        title {}, 'Super kickass page'
        script {src: '/scripts/app.js'}
      Pages {path: @props.path},
        Page {path: '/', handler: Home}
        Page {path: '/people/:name', handler: Person}
