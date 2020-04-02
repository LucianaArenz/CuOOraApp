tests
testInitializeWithAuthorAndDescriptionAndTitleAndTopicsAndcreationDate
	| question tag aDate |
	question := Question new.
	aDate := DateAndTime now.
	user := User new.
	user initializeWithName: 'Lu' password: '1234'.
	tag := Tag new.
	tag initializeWithName: 'OO' description: 'Orientacion a Objetos'.
	question
		initializeWithAuthor: user
		description: 'Orientacion a objetos'
		title: 'Como diagramar un UML'
		topics: tag
		creationDate: aDate.
	self assert: question author equals: user.
	self assert: question description equals: 'Orientacion a objetos'.
	self assert: question title equals: 'Como diagramar un UML'