calculating
calculatePoints
	"sum of all user participations. Each question sums 20 points, each anwer sums 50 points, likes are 1 point, dislikes -1 point"
	| sumaPreguntas sumaRespuestas sumaLikes sumaDislikes |
	sumaLikes:= 0. sumaDislikes:=0.
	sumaPreguntas:= questions size * 20. sumaRespuestas:= answers size * 50.
	questions
		do: [ :each |
			sumaLikes := sumaLikes + each likes.
			sumaDislikes := sumaDislikes + each dislikes ].
	answers
		do: [ :each |
			sumaLikes := sumaLikes + each likes.
			sumaDislikes := sumaDislikes + each dislikes ].
	sumaLikes := sumaLikes - sumaDislikes.
	^ sumaPreguntas + sumaRespuestas + sumaLikes