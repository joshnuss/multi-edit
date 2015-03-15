express = require('express')
app = express()

app.get '/', (request, response) ->
  response.end("all good")

app.listen(3031)
