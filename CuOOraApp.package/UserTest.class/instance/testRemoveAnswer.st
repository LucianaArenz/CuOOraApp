test
testRemoveAnswer
	|questionOne answerOne answerTwo|
	self assert: user answers size equals: 0.
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
	user removeAnswer: answerOne.
	self assert: user answers size equals: 1.
	user answers do: [ :each | self deny: each equals: answerOne ]