test
testCalculatePoints
	|aQuestion1 aQuestion2 anotherUser answerOne|
	self assert: user calculatePoints equals: 0.
	aQuestion1:= Question
		author: user 
		description: 'Orientacion a objetos'
		title: 'Como diagramar un UML'
		topics: topics
		creationDate: date.
	user addQuestion: aQuestion1. "20 ptos"
	self assert: user calculatePoints equals: 20.
	anotherUser:= User username: 'test2' password: '1234' creationDate: date name: 'test2'.
	aQuestion2:= Question
		author: anotherUser
		description: 'Orientacion a objetos'
		title: 'Como diagramar un UML'
		topics: topics
		creationDate: date.
	anotherUser addQuestion: aQuestion2.
	answerOne := Answer author: user text: 'aText' question: aQuestion2 creationDate: date.
	user addAnswer: answerOne.
	self assert: user calculatePoints equals: 70.
	aQuestion1 upvote: anotherUser.
	self assert: user calculatePoints equals: 71.
	answerOne downvote: anotherUser.
	self assert: user calculatePoints equals: 70.
	