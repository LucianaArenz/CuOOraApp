tests
testInitializeWithAuthorTextQuestionCreationDate
	| question tag aDate answer userAuthor |
	question := Question new.
	aDate := DateAndTime now.
	user := User new.
	user initializeWithName: 'Lu' password: '1234' creationDate: aDate name: 'Lu'.
	userAuthor := User new.
	userAuthor initializeWithName: 'Juan' password: '1234' creationDate: aDate name: 'Juan'.
	tag := Tag new.
	answer := Answer new.
	tag initializeWithName: 'OO' description: 'Orientacion a Objetos'.
	question
		initializeWithAuthor: user
		description: 'Orientacion a objetos'
		title: 'Como diagramar un UML'
		topics: tag
		creationDate: aDate.
	answer
		initializeWithAuthor: userAuthor
		text: 'Para diagramar un UML se debe tener en cuenta ...'
		question: question
		creationDate: aDate.
	self assert: answer author equals: userAuthor.
	self
		assert: answer text
		equals: 'Para diagramar un UML se debe tener en cuenta ...'.
	self assert: answer question equals: question.
	self assert: answer creationDate asDate equals: aDate asDate