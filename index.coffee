express = require('express')
app     = express()
server  = require('http').Server(app)
io      = require('socket.io')(server)

server.listen(process.env.PORT || 3031)

app.use(express.static(__dirname + '/www'))

site =
  name: "Super Store"
  languages: ['en', 'fr']
  layout:
    menu: []
    title: "Untitled"
    logo: null
  types: [
    'page'
    'team_member'
    'product'
    'taxonomy'
    'faq'
    'contact_form'
  ]
  siteMap: [
  ]
  documents: [
  ]
  users:
    editing: []

io.on 'connection', (socket) ->
  socket.emit("init", site.layout, site.types, site.users.editing)
