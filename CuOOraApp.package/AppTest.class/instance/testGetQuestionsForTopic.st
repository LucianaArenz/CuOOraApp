test
testGetQuestionsForTopic
	|tag tag2 result|
	app createTopicWithName: 'OO' description: 'Orientacion a objetos'.
	tag:= app getTagFromNameOrNil: 'OO'.
	
	result:= app getQuestionsForTopic: tag.
	self assert: result isEmpty equals: true.
	
	
	app createTopicWithName: 'OO2' description: 'Orientacion a objetos 2'.
	tag2:= app getTagFromNameOrNil: 'OO2'.
	
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