require './config/Bootstrap'
express = require 'express'
db = require './config/Datastore'
routes = require('./app/routes/Index')(db)

app = express express.logger() 
app.use express.errorHandler({ dumpExceptions: true, showStack: true })

app.use(require('asset-pipeline')({
    server: app,
    assets: './assets',
    debug: false,
    extensions: ['.js'],
    cache: './public/js'
}))

app.set 'view engine', 'jade'

app.use '/components', express.static(__dirname + '/public/components') # set up bower
app.use '/img', express.static(__dirname + '/public/img')
app.use '/css', express.static(__dirname + '/public/css')

app.get '/', routes.animals
app.get '/reptiles', routes.animals
app.get '/birds', routes.animals

port = process.env.PORT or 3000

app.listen port, ->
	console.log "listening on #{port}"