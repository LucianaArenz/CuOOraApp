calculating
getOrderedAnswers
	"get answers ordered by votes"
	|result|
	result:= answers asSortedCollection sortBlock: [ :c1 :c2 | c1 getPoints <= c2 getPoints ].
	^result.