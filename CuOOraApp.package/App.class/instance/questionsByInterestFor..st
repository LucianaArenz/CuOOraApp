actions
questionsByInterestFor: aUser
	| totalQuestion |
	totalQuestion := OrderedCollection new.
	aUser interests
		do: [ :tag | 
			questions select: [ :question | (question topics detect: [ :aTag | aTag = tag ])
						ifTrue: [ totalQuestion add: question ] ] ].
	^totalQuestion.