calculating
questionsByInterestFor: aUser
 |questionsUser| 
	questionsUser:= questions select: [ :question | (question checkTag: aUser interests) ].
	aUser following do: [ :user | questionsUser addAll: (user questions select: [ :question | (question checkTag: user interests) ]) ].
	
	^questionsUser