AnimalModel = require '../models/Animal'

module.exports = (db) ->
	index: (req, res) ->
		db.clutch.mammals (err, allMammals) ->
			if err
				console.log "there was an error! #{err}"
			else
				animals = []
				for mammal in allMammals
					animals.push new AnimalModel.Animal(mammal._id, mammal.type, mammal.animal, mammal.group, mammal.image)

				res.render 'index', {animals: animals}

		