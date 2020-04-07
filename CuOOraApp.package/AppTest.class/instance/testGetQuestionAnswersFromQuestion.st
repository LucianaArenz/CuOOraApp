test
testGetQuestionAnswersFromQuestion
	| userAuthor aQuestion aDate tag answers |
	aDate := DateAndTime now.
	app createUser: 'Lu' password: '1234' name: 'Lu'.
	userAuthor:= app getUser: 'Lu'.
	tag := Tag new.
	tag initializeWithName: 'OO' description: 'Orientacion a objetos'.
	app
		createQuestionWithAuthor: userAuthor
		creationDate: aDate
		topics: tag
		title: 'Como diagramar un UML'
		description: 'Orientacion a objetos'.
	aQuestion:= userAuthor questions first.
	app
		createAnswerWithAuthor: user
		creationDate: aDate
		text: 'Genial'
		question: aQuestion.
	answers:= app getQuestionAnswersFromQuestion: aQuestion.
	self assert: answers first text equals: 'Genial'.