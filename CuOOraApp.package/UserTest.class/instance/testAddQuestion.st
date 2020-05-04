test
testAddQuestion
	|aQuestion|
	self assert: user questions size equals: 0.
	aQuestion:= Question
		author: user
		description: 'Orientacion a objetos'
		title: 'Como diagramar un UML'
		topics: topics
		creationDate: date.
	user addQuestion: aQuestion.
	self assert: user questions size equals: 1.
	self assert: user questions last equals: aQuestion.