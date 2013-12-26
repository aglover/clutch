require 'should'
require 'mocha'
require './../config/Bootstrap'


describe 'Bootstrap should add capitalize and periodize to normal Strings', ->
	it 'should capitalize a non-capitalized word', ->
		noCaps = 'test'
		noCaps.capitalize().should.equal 'Test'
		

	it 'should add a period to a sentence if non exists', ->
		noPeriod = 'this is a test'
		noPeriod.periodize().should.equal 'this is a test.'

