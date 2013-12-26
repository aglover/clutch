require 'should'
require 'mocha'
app = require '../App'
http = require 'http'

describe 'Clutch should support 3 types of get requests', ->
	it 'should respond with a 200 when index is hit', (done) ->
		http.get {host: 'localhost', port: 3000, path: '/'}, (res) ->			
			res.statusCode.should.equal 200
			done()

	it 'should respond with a 200 when /reptiles is hit', (done) ->
		http.get {host: 'localhost', port: 3000, path: '/reptiles'}, (res) ->			
			res.statusCode.should.equal 200
			done()

	it 'should respond with a 200 when /birds is hit', (done) ->
		http.get {host: 'localhost', port: 3000, path: '/birds'}, (res) ->			
			res.statusCode.should.equal 200
			done()
