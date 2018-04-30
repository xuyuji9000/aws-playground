var express = require('express')
var app = express()
var port = process.env.PORT || 8000

app.get('/', function (req, res) {
  res.send('Node Playground is running well!')
})



app.listen(port, function(){
    console.log('Listening on port ' + port + '!')
})