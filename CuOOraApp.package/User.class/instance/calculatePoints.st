as yet unclassified
calculatePoints
	| sumaPreguntas sumaRespuestas sumaLikes sumaDislikes |
	self Questions
		do: [ :each | 
			sumaPreguntas := sumaPreguntas + 20.
			sumaLikes := sumaLikes + 1.
			sumaDislikes := sumaDislikes + 1 ].
	self Answers
		do: [ :each | 
			sumaRespuestas := sumaRespuestas + 30.
			sumaLikes := sumaLikes + 1.
			sumaDislikes := sumaDislikes + 1 ].
	sumaLikes := sumaLikes - sumaDislikes.
	^ sumaPreguntas + sumaRespuestas + sumaLikes