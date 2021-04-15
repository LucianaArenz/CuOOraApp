tests
testAddInterestToUser
	| tag |
	app createTopicWithName: 'OO' description: 'Orientacion a objetos'.
	tag:= app getTagFromNameOrNil: 'OO'.
	
	app addInterest: tag toUser: user.
	self assert: tag name equals: user interests first name.
	self assert: tag name equals: 'OO'.
	self assert: tag description equals: 'Orientacion a objetos'.