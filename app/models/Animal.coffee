class Animal

  constructor: (@id, @type, @name, @group, @img) ->

  @typeFrom: (str) ->
  	itype = str.slice(1)
  	if itype.length is 0 or itype not in ['reptiles', 'birds']
  		itype = 'mammals'
  	itype

module.exports = Animal