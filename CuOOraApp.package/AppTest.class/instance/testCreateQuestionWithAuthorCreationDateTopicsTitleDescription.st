tests
testCreateQuestionWithAuthorCreationDateTopicsTitleDescription
	| aDate tag |
	aDate := DateAndTime now.
	app createTopicWithName: 'Test de Unidad' description: 'Test de Unidad'.
	tag:= app getTagFromNameOrNil: 'Test de Unidad'.
	app
		createQuestionWithAuthor: user
		creationDate: aDate
		topics: {tag}
		title: 'Como diagramar un UML'
		description: 'Orientacion a objetos'.
	self assert: app questions size equals: 1.
	self deny: app questions size equals: 0.
	user questions
		do:
			[ :question | self assert: question title equals: 'Como diagramar un UML' ]