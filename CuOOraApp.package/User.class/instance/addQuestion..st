adding
addQuestion: question
	questions detect: [ :each | each == question ]
		ifNone: [ questions add: question ].