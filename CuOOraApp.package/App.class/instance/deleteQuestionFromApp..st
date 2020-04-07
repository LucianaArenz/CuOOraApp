actions
deleteQuestionFromApp: aQuestion
	(questions detect: [ :question | question = aQuestion ])
		ifNotNil: [ aQuestion removeAllAnswers . questions remove: aQuestion ].
	aQuestion author removeQuestion: aQuestion.