actions
questionsByInterestFor: aUser
	| totalQuestion |
	totalQuestion := OrderedCollection new.
	aUser Interests
		do: [ :tag | 
			Questions
				select: [ :question | 
					(question Topics detect: [ :aTag | aTag = tag ])
						ifTrue: [ totalQuestion add: question ] ] ].
	^ totalQuestion