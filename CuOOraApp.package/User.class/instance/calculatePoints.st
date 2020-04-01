calculating
calculatePoints
	| sumaPreguntas sumaRespuestas sumaLikes sumaDislikes |
	sumaPreguntas:= 0. sumaLikes:= 0. sumaRespuestas:= 0. sumaDislikes:= 0.
	questions
		do: [ :each | 
			sumaPreguntas := sumaPreguntas + 20.
			sumaLikes := sumaLikes + 1.
			sumaDislikes := sumaDislikes + 1 ].
	answers
		do: [ :each | 
			sumaRespuestas := sumaRespuestas + 30.
			sumaLikes := sumaLikes + 1.
			sumaDislikes := sumaDislikes + 1 ].
	sumaLikes := sumaLikes - sumaDislikes.
	^ sumaPreguntas + sumaRespuestas + sumaLikes