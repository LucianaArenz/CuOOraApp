testing
includesTopic: aTopic
	|result|
	result:= true.
	topics detect: [ :each | each == aTopic ]
		ifNone: [ result:= false ].
	^result.