initialization
setUp
	|tag1 tag2|
	user1:= User username: 'Lu' password: '1234' creationDate: DateAndTime now.
	user2:= User username: 'test' password: '1234' creationDate: DateAndTime now.
	user3:= User username: 'test2' password: '1234' creationDate: DateAndTime now.
	tags:= OrderedCollection new.
	tag1:= Tag name: 'OO' description: 'Orientacion a Objetos'.
	tag2:= Tag name: 'test' description: 'just a test'.
	question:= Question
		author: user1
		description: 'Orientacion a objetos'
		title: 'Como diagramar un UML'
		topics: tags
		creationDate: DateAndTime now.
	