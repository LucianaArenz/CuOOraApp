tests
testCreateQuestionWithAuthorCreationDateTopicsTitleDescription
	| aDate tag |
	aDate := DateAndTime now.
	user initializeWithName: 'Lu' password: '1234' creationDate: aDate name: 'Lu'.
	tag := Tag new.
	tag initializeWithName: 'OO' description: 'Orientacion a objetos'.
	app
		createQuestionWithAuthor: user
		creationDate: aDate
		topics: tag
		title: 'Como diagramar un UML'
		description: 'Orientacion a objetos'.
	self assert: app questions size equals: 1.
	self deny: app questions size equals: 0.
	user questions
		do:
			[ :question | self assert: question title equals: 'Como diagramar un UML' ]