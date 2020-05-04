adding
addAnswer: answer
	answers detect: [ :each | each == answer ]
		ifNone: [ answers add: answer ].