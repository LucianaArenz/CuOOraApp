actions
deleteQuestionFromApp: aQuestion
	(questions detect: [ :question | question = aQuestion ])
		ifTrue: [ aQuestion removeAllAnswers . questions remove: aQuestion ].
	aQuestion author deleteQuestionFromUser: aQuestion.