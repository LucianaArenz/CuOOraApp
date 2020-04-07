tests
testAddInterestToUser
	| tag aDate |
	aDate:= DateAndTime now.
	tag := Tag new.
	tag initializeWithName: 'OO' description: 'Orientacion a objetos'.
	app addInterest: tag toUser: user.
	self assert: tag name equals: user interests first name.
	self assert: tag name equals: 'OO'.
	self assert: tag description equals: 'Orientacion a objetos'.