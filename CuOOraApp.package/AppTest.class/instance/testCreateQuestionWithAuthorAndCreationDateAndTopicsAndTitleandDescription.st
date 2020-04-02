tests
testCreateQuestionWithAuthorAndCreationDateAndTopicsAndTitleandDescription
	| app aDate tag |
	app := App new.
	app initialize.
	user := User new.
	user initializeWithName: 'Lu' password: '1234'.
	aDate := DateAndTime now.
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