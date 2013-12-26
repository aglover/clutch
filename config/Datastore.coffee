mongo = require 'mongoskin'

db = mongo.db('mongodb://magnus:magnus@flame.mongohq.com:27054/magnus', {safe:false})

db.bind 'clutch', {
	findByType: (itype, fn) ->
		this.find({type:itype}, {limit:10, sort:[['animal', 1]]}).toArray(fn)

	mammals: (fn) ->
		this.findByType('mammal', fn)

	reptiles: (fn) ->
		this.findByType('reptile', fn)

	birds: (fn) ->
		this.findByType('bird', fn)
}

module.exports = db