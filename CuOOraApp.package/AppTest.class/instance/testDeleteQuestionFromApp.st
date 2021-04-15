test
testDeleteQuestionFromApp
	| aDate tag aQuestion |
	aDate := DateAndTime now.
	app createTopicWithName: 'OO' description: 'Orientacion a objetos'.
	tag:= app getTagFromNameOrNil: 'OO'.
	app
		createQuestionWithAuthor: user
		creationDate: aDate
		topics: {tag}
		title: 'Como diagramar un UML'
		description: 'Orientacion a objetos'.
	aQuestion:= user questions first.
	app deleteQuestionFromApp: aQuestion.
	user questions
		do:
			[ :question | self deny: question title equals: 'Como diagramar un UML' ]