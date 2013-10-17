AnimalModel = require '../models/Animal'

module.exports = (db) ->
	index: (req, res) ->
		db.clutch.mammals (err, allMammals) ->
			if err
				console.log "there was an error! #{err}"
			else
				animals = []
				imageUrls = []
				for mammal in allMammals
					animals.push new AnimalModel.Animal(mammal._id, mammal.type, mammal.animal, mammal.group, mammal.image)
					imageUrls.push "background-image:url(img/#{mammal.image})"

				finalCss = "{width: 0px;height: 0px;display: inline; #{imageUrls.join(';')}; background-image: url();}"
				res.render 'index', {animals: animals, css: finalCss}

		