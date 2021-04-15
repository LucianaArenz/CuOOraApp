tests
testCreateTopicWithNameDescription
	|tag|
	app createTopicWithName: 'OO' description: 'Orientacion a objetos'.
	self assert: app topics size equals: 1.
	self deny: app topics size equals: 0.
	
	tag:= app getTagFromNameOrNil: 'OO'.
	self assert: tag name equals: 'OO'