initialization
setUp
	super setUp.
	user1:= User username: 'Lu' password: '1234' creationDate: DateAndTime now name: 'Lu'.
	user2:= User username: 'test' password: '1234' creationDate: DateAndTime now name: 'test'.
	user3:= User username: 'test2' password: '1234' creationDate: DateAndTime now name: 'test2'.
	tags:= OrderedCollection new.
	tag1:= Tag name: 'OO' description: 'Orientacion a Objetos'.
	tag2:= Tag name: 'test' description: 'just a test'.
	tag3:= Tag name: 'false' description: 'false'.
	tags add: tag1; add: tag2.
	question:= Question
		author: user1
		description: 'Orientacion a objetos'
		title: 'Como diagramar un UML'
		topics: tags
		creationDate: DateAndTime now.
	