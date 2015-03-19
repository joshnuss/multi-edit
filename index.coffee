express = require('express')
app     = express()
server  = require('http').Server(app)
io      = require('socket.io')(server)

server.listen(process.env.PORT || 3031)

app.use(express.static(__dirname + '/www'))

io.on 'connection', (socket) ->
