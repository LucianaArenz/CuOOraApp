calculating
questionsByInterestFor: aUser
	| res |
	res := OrderedCollection new.
	aUser interests
		do: [ :aTag | 
			questions
				do: [ :aQuestion | 
					(aQuestion topics includes: aTag)
						ifTrue: [ (res includes: aQuestion)
								ifFalse: [ res add: aQuestion ] ] ] ].
	^ res