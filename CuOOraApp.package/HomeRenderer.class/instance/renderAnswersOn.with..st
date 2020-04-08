rendering
renderAnswersOn: aCanvas with: oneQuestion
	|answersRenderer| 
	answersRenderer:= AnswerRenderer new.
	answersRenderer appInstance: appInstance.