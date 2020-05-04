test
testRemoveQuestion
	|aQuestion aQuestion2|
	self assert: user questions size equals: 0.
	aQuestion:= Question
		author: user
		description: 'Orientacion a objetos'
		title: 'Como diagramar un UML'
		topics: topics
		creationDate: date.
	aQuestion2:= Question
		author: user
		description: 'Orientacion a objetos 2'
		title: 'Como diagramar un UML otra vez'
		topics: topics
		creationDate: date.
	user addQuestion: aQuestion.
	user addQuestion: aQuestion2.
	self assert: user questions size equals: 2.
	user removeQuestion: aQuestion.
	self assert: user questions size equals: 1.
	user questions do: [ :each | self deny: each equals: aQuestion ].