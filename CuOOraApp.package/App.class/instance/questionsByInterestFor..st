calculating
questionsByInterestFor: aUser
	| result |
	result := nil.
	aUser interests
		do: [ :aTag | 
			(result:= questions select: [ :aQuestion |
				aQuestion topics includes: aTag
			]) .
	].
	^result.