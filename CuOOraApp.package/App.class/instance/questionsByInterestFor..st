calculating
questionsByInterestFor: aUser
 "|questionsUser| 
	questionsUser:= questions select: [ :question | (question checkTag: aUser interests) ].
	aUser following do: [ :user | questionsUser addAll: (user questions select: [ :question | (question checkTag: user interests) ]) ].
	
	^questionsUser"
 	|questionsTopics questionsFollowers result|
	result:= SortedCollection sortBlock: [:each1 :each2 | each1 creationDate < each2 creationDate].
	questionsFollowers:= OrderedCollection new.
	(aUser interests isEmpty)
		ifFalse: [questionsTopics:= questions select: [:question| (question checkTag: aUser interests)].
			(questionsTopics isNotEmpty)
			 ifTrue: [result addAll: questionsTopics].
		].
	aUser following do: [:each|(each questions isNotEmpty)
		ifTrue: [questionsFollowers addAll: each questions].
	].
	(questionsFollowers isNotEmpty)
		ifTrue: [result addAll: questionsFollowers].
	^result.