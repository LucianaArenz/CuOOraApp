calculating
calculatePoints
	| sumaPreguntas sumaRespuestas sumaLikes sumaDislikes |
	sumaPreguntas:= 0. sumaLikes:= 0. sumaRespuestas:= 0. sumaDislikes:= 0.
	Questions
		do: [ :each | 
			sumaPreguntas := sumaPreguntas + 20.
			sumaLikes := sumaLikes + 1.
			sumaDislikes := sumaDislikes + 1 ].
	Answers
		do: [ :each | 
			sumaRespuestas := sumaRespuestas + 30.
			sumaLikes := sumaLikes + 1.
			sumaDislikes := sumaDislikes + 1 ].
	sumaLikes := sumaLikes - sumaDislikes.
	^ sumaPreguntas + sumaRespuestas + sumaLikes