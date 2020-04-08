rendering
renderContentOn: aCanvas
	questionRenderer := QuestionRenderer new.
	answerRenderer := AnswerRenderer new.
	questionRenderer appInstance: appInstance.
	questionRenderer homeLink: self.
	self renderHeaderOn: aCanvas.
	self renderQuestionOn: aCanvas.
	self renderLogoutOn: aCanvas