require 'should'
require 'mocha'
db = require '../config/Datastore'
routes = require('../app/routes/Index')(db)

describe 'routes', ->
    res =
        render: (page) ->

    describe 'HTTP get to index', ->
        it 'should support seeing an index page', (done) ->
            req = {path:'/'}
            res.render = (page) ->
                page.should.equal 'index'
                done()
            routes.animals(req, res)