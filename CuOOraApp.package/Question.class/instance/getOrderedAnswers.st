calculating
getOrderedAnswers
	"get answers ordered by votes"
	^answers asSortedCollection: [ :c1 :c2 | c1 getPoints >= c2 getPoints ] .