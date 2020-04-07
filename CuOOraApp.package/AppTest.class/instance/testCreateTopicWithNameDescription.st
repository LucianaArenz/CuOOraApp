tests
testCreateTopicWithNameDescription
	app createTopicWithName: 'OO' description: 'Orientacion a objetos'.
	self assert: app topics size equals: 1.
	self deny: app topics size equals: 0.
	app topics do: [ :tag | self assert: tag name equals: 'OO' ]