tests
testCreateAnswerWithAuthorCreationDateTextQuestion
	| userAuthor aQuestion aDate tag |
	aDate := DateAndTime now.
	aQuestion := Question new.
	userAuthor := User new.
	userAuthor initializeWithName: 'Juan' password: '1234' creationDate: aDate name: 'Juan'.
	app createTopicWithName: 'OO' description: 'Orientacion a objetos'.
	tag:= app getTagFromNameOrNil: 'OO'.
	aQuestion
		initializeWithAuthor: userAuthor
		description: 'Orientacion a objetos'
		title: 'Como diagramar un UML'
		topics: {tag}
		creationDate: aDate.
	app
		createAnswerWithAuthor: user
		creationDate: aDate
		text: 'Genial'
		question: aQuestion.
	user answers
		do: [ :answer | self assert: answer text equals: 'Genial' ]