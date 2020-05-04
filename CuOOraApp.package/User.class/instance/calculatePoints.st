calculating
calculatePoints
	"sum of all user participations. Each question sums 20 points, each anwer sums 50 points, likes are 1 point, dislikes -1 point"
	| sumaPreg sumaRtas |
	sumaPreg := questions sum: [ :each | each getPoints ].
	sumaRtas := answers sum: [ :each | each getPoints ].
	^ sumaPreg + sumaRtas