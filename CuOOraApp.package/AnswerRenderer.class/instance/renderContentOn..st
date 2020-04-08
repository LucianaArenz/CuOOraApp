rendering
renderContentOn: aCanvas
	aCanvas header: HeaderRenderer new.
	self renderQuestionOn: aCanvas.
	aCanvas horizontalRule.
	self renderAnswersOn: aCanvas.