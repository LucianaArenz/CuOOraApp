callbacks
navigateToAnswersForQuestion: aQuestion
	|answersRenderer|
	answersRenderer:= AnswerRenderer new.
	answersRenderer question: aQuestion.
	answersRenderer homeLink: homeLink.
	homeLink call: answersRenderer.
	