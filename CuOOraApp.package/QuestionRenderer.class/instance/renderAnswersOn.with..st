accessing
renderAnswersOn: aCanvas with: oneQuestion
	answerRenderer collectAnswers: oneQuestion answers.
	answerRenderer renderAnswerOn: aCanvas