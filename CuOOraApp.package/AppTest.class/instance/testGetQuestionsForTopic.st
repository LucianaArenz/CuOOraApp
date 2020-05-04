test
testGetQuestionsForTopic
	|tag tag2 result|
	tag:= Tag new.
	tag initializeWithName: 'OO' description: 'Orientacion a objetos'.
	
	result:= app getQuestionsForTopic: tag.
	self assert: result isEmpty equals: true.
	
	tag2:= Tag new.
	tag initializeWithName: 'OO2' description: 'Orientacion a objetos 2'.
	
	result:= app getQuestionsForTopic: tag2.
	self assert: result isEmpty equals: true.
	
	app
		createQuestionWithAuthor: user
		creationDate: DateAndTime now
		topics: {tag}
		title: 'Como diagramar un UML'
		description: 'Orientacion a objetos'.
		
	app
		createQuestionWithAuthor: user
		creationDate: DateAndTime now
		topics: {tag2}
		title: 'Como diagramar un UML'
		description: 'Orientacion a objetos 2'.
		
	result:= app getQuestionsForTopic: tag.
	self assert: result size equals: 1.
	self assert: result first description equals: 'Orientacion a objetos'.
	
	result:= app getQuestionsForTopic: tag2.
	self assert: result size equals: 1.
	self assert: result first description equals: 'Orientacion a objetos 2'.