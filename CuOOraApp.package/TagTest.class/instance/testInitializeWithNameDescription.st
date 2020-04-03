tests
testInitializeWithNameDescription
	| tag |
	tag := Tag new.
	tag initializeWithName: 'OO' description: 'Orientacion a objetos'.
	self assert: tag name equals: 'OO'.
	self assert: tag description equals: 'Orientacion a objetos'