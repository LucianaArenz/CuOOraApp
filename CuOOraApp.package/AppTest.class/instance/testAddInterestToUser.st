tests
testAddInterestToUser
	| tag app |
	app := App new.
	app initialize.
	tag := Tag new.
	tag initializeWithName: 'OO' description: 'Orientacion a objetos'.
	user := User new.
	user initializeWithName: 'Lu' password: '1234'.
	app addInterest: tag toUser: user.
	self assert: user username equals: 'Lu'.
	self assert: user password equals: '1234'.
	self assert: tag name equals: 'OO'.
	self assert: tag description equals: 'Orientacion a objetos'