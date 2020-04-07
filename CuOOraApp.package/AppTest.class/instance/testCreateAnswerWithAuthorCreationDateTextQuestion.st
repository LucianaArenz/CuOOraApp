tests
testCreateAnswerWithAuthorCreationDateTextQuestion
	| userAuthor aQuestion aDate tag |
	aDate := DateAndTime now.
	user := User new.
	user initializeWithName: 'Lu' password: '1234' creationDate: aDate name: 'Lu'.
	aQuestion := Question new.
	userAuthor := User new.
	userAuthor initializeWithName: 'Juan' password: '1234' creationDate: aDate name: 'Juan'.
	tag := Tag new.
	tag initializeWithName: 'OO' description: 'Orientacion a objetos'.
	aQuestion
		initializeWithAuthor: userAuthor
		description: 'Orientacion a objetos'
		title: 'Como diagramar un UML'
		topics: tag
		creationDate: aDate.
	app
		createAnswerWithAuthor: user
		creationDate: aDate
		text: 'Genial'
		question: aQuestion.
	self assert: user answers size equals: 1.
	self deny: user answers size equals: 0.
	user answers
		do: [ :answer | self assert: answer text equals: 'Genial' ]