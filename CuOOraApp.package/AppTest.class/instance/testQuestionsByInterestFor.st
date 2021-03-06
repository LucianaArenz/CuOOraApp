tests
testQuestionsByInterestFor
	| aDate tag tag2 result |
	aDate := DateAndTime now.
	app createTopicWithName: 'OO' description: 'Orientacion a objetos'.
	app createTopicWithName: 'TEST' description: 'TEST'.
	tag:= app topics first.
	tag2:= app topics last.
	app addInterest: tag toUser: user.
	app
		createQuestionWithAuthor: user
		creationDate: aDate
		topics: {tag}
		title: 'Como diagramar un UML'
		description: 'Orientacion a objetos'.
	app
		createQuestionWithAuthor: user
		creationDate: aDate
		topics: {tag2}
		title: 'TEST'
		description: 'TEST'.
	self assert: app topics size equals: 2.
	result:= app questionsByInterestFor: user.
	self assert: result size equals: 1.