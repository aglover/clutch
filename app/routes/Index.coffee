Animal = require '../models/Animal'

module.exports = (db) ->
	animals: (req, res) ->
		itype = Animal.typeFrom req.path

		db.clutch[itype] (err, allAnimals) ->
			if err
				console.log "there was an error! #{err}"
			else
				animals = []
				imagePaths = []
				for animal in allAnimals
					animals.push new Animal(animal._id, animal.type, animal.animal, animal.group, animal.image)
					imagePaths.push "url(img/#{animal.image})"

				res.render 'index', {animals: animals, imagePaths: imagePaths}