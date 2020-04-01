actions
questionsByInterestFor: aUser
	| totalQuestion |
	totalQuestion := OrderedCollection new.
	aUser Interests
		do: [ :tag | 
			questions
				select: [ :question | 
					(question Topics detect: [ :aTag | aTag = tag ])
						ifTrue: [ totalQuestion add: question ] ] ].
	^ totalQuestion