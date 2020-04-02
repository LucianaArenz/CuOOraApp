tests
testCreateAnswerWithAuthorAndCreationDateAndTextAndQuestion
	| app userAuthor aQuestion aDate tag |
	app := App new.
	app initialize.
	user := User new.
	user initializeWithName: 'Lu' password: '1234'.
	aDate := DateAndTime now.
	aQuestion := Question new.
	userAuthor := User new.
	userAuthor initializeWithName: 'Juan' password: '1234'.
	tag := Tag new.
	tag initializeWithName: 'OO' description: 'Orientacion a objetos'.
	aQuestion
		initializeWithAuthor: userAuthor
		description: 'Orientacion a objetos'
		title: 'Como diagramar un UML'
		topics: tag.
	app
		createAnswerWithAuthor: user
		creationDate: aDate
		text: 'Genial'
		question: aQuestion.
	self assert: user answers size equals: 1.
	self deny: user answers size equals: 0.
	user answers
		do: [ :answer | self assert: answer text equals: 'Genial' ]