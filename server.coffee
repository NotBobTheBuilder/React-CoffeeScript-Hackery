require 'coffee-script/register'

express     = require 'express'
app         = express()
React       = require 'react'
browserify  = require 'connect-browserify'

App         = require './client'


app.get '/scripts/app.js',
  browserify
    entry: './client'
    transforms: ['coffeeify']
    extensions: ['.coffee']

app.get '/', (req, res) ->
  res.send 200, React.renderComponentToString App path: '/'

app.listen 2000
console.log 'Go to http://localhost:2000/ in a browser'
