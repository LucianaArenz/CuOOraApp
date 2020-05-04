test
testDeleteQuestionFromApp
	| aDate tag aQuestion |
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
	aQuestion:= user questions first.
	app deleteQuestionFromApp: aQuestion.
	user questions
		do:
			[ :question | self deny: question title equals: 'Como diagramar un UML' ]