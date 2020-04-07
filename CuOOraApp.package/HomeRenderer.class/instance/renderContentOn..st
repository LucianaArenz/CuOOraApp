rendering
renderContentOn: aCanvas
	questionRenderer := QuestionRenderer new.
	questionRenderer appInstance: appInstance.
	self renderHeaderOn: aCanvas.
	self renderQuestionOn: aCanvas.
	self renderLogoutOn: aCanvas