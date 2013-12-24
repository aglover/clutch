AnimalModel = require '../models/Animal'

module.exports = (db) ->
	animals: (req, res) ->
		itype = req.path.slice(1)
		if itype.length is 0 and itype not in ['reptiles', 'birds']
			itype = 'mammals'

		db.clutch[itype] (err, allAnimals) ->
			if err
				console.log "there was an error! #{err}"
			else
				animals = []
				imagePaths = []
				for animal in allAnimals
					animals.push new AnimalModel.Animal(animal._id, animal.type, animal.animal, animal.group, animal.image)
					imagePaths.push "url(img/#{animal.image})"

				res.render 'index', {animals: animals, imagePaths: imagePaths}