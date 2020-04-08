rendering
renderAnswersOn: aCanvas with: oneQuestion
	|answersRenderer| 
	answersRenderer:= AnswerRenderer new.
	answersRenderer appInstance: appInstance.
	answersRenderer collectAnswers: oneQuestion answers.
	answersRenderer renderAnswerOn: aCanvas.