require 'should'
require 'mocha'
Animal = require '../app/models/Animal'

describe 'Animal model', ->
    describe 'convinience methods', ->
        it 'should support converting a request into a type', ->
            Animal.typeFrom( '/').should.equal 'mammals'
            Animal.typeFrom( '/mammals').should.equal 'mammals'
            Animal.typeFrom( '/birds').should.equal 'birds'
            Animal.typeFrom( '/reptiles').should.equal 'reptiles'
            Animal.typeFrom( '/asdfas').should.equal 'mammals'