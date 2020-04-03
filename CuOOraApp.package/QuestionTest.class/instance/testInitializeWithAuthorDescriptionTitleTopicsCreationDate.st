tests
testInitializeWithAuthorDescriptionTitleTopicsCreationDate
	| aQuestion tag aDate |
	aQuestion := Question new.
	aDate := DateAndTime now.
	tag := Tag new.
	tag initializeWithName: 'OO' description: 'Orientacion a Objetos'.
	aQuestion
		initializeWithAuthor: user1
		description: 'Orientacion a objetos'
		title: 'Como diagramar un UML'
		topics: tag
		creationDate: aDate.
	self assert: aQuestion author equals: user1.
	self assert: aQuestion description equals: 'Orientacion a objetos'.
	self assert: aQuestion title equals: 'Como diagramar un UML'