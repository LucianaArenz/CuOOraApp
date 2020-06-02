calculating
calculatePoints
	"sum of all user participations. Each question sums 20 points, each anwer sums 50 points, likes are 1 point, dislikes -1 point"
	| sumaPreg sumaRtas |
	sumaPreg := questions inject: 0 into: [ :sum :each | sum + each getPoints  ].
	sumaRtas := answers inject: 0 into: [ :sum :each | (each question author name = self name) ifFalse:[sum + each getPoints ]
																											ifTrue:[ sum + each getPoints - 50] ]. " Agregue (each author = self author) ifFalse:"
	^ sumaPreg + sumaRtas