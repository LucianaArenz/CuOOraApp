actions
deleteQuestionFromApp: aQuestion
	aQuestion removeAllAnswers.
	questions remove: aQuestion.
	aQuestion author removeQuestion: aQuestion.