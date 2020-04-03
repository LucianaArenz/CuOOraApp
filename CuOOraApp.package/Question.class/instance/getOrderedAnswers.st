calculating
getOrderedAnswers
	"get answers ordered by votes"
	|result|
	result:= SortedCollection sortBlock: [ :c1 :c2 | c1 getPoints >= c2 getPoints ].
	result addAll: answers.
	^result.