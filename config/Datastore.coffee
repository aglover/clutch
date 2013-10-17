mongo = require 'mongoskin'

db = mongo.db('mongodb://magnus:magnus@flame.mongohq.com:27054/magnus', {safe:false})

db.bind 'clutch', {
	mammals: (fn) ->
		this.find({type:'mammal'}, {limit:10, sort:[['animal', 1]]}).toArray(fn)
}

exports.datastore = db