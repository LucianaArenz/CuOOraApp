callbacks
navigateToAnswersForQuestion: aQuestion
	|answersRenderer|
	answersRenderer:= AnswerRenderer new.
	answersRenderer question: aQuestion.
	answersRenderer homeLink: homeLink.
	answersRenderer appInstance: appInstance.
	homeLink call: answersRenderer.
	