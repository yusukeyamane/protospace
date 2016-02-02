class @Image
	constructor: (@img) ->
	 @img.on 'click', @makeRandom
	makeRandom: =>
		rand = Math.floor(Math.random() * 4)
		switch rand
			when 0 then @getBigger()
			when 1 then @getSmaller()
			when 2 then @getDown()
			when 3 then @getUp()

	getBigger: ->
		@img.animate { width: '+=50' }

	getSmaller: ->
		@img.animate { width: '-=50'}

	getDown: ->
		@img.animate { left: '+=100' }

	getUp: ->
		@img.animate { top: '+=100' }
