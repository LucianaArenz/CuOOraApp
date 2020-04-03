test
testRemoveAnswer
	|answerOne answerTwo|
	self assert: user answers size equals: 0.
	user := User new.
	user initialize.
	user answers: OrderedCollection new.
	answerOne := Answer new.
	answerOne text: 'hola'.
	answerOne question: OrderedCollection new.
	answerTwo := Answer new.
	answerOne text: 'Mundo'.
	answerOne question: OrderedCollection new.
	user addAnswer: answerOne.
	user addAnswer: answerTwo.
	self assert: user answers size equals: 2.
	user removeAnswer: answerOne.
	self assert: user answers size equals: 1.