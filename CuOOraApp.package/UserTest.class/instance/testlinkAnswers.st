tests
testlinkAnswers
	|questionOne answerOne answerTwo|
	questionOne:= Question
		author: user
		description: 'Orientacion a objetos'
		title: 'Como diagramar un UML'
		topics: topics
		creationDate: date.
	answerOne:= Answer
		author: user
		text: 'Respuesta'
		question: questionOne
		creationDate: date.
	
	answerTwo := Answer
		author: user
		text: 'Respuesta 2'
		question: questionOne
		creationDate: date.
	user addAnswer: answerOne.
	user addAnswer: answerTwo.
	self assert: user answers size equals: 2.
	self deny: user answers equals: 0.
	self assert: user answers first equals: answerOne.
	self assert: user answers last equals: answerTwo.