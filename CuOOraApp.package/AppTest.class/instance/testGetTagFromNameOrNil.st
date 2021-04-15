test
testGetTagFromNameOrNil
	|tag|
	tag:= tag:= app getTagFromNameOrNil: 'OO'.
	self assert: tag equals: nil.
	
	app createTopicWithName: 'OO' description: 'Orientacion a objetos'.
	tag:= app getTagFromNameOrNil: 'OO'.
	self assert: tag name equals: 'OO'.