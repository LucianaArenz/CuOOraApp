rendering
renderContentOn: aCanvas
	|answerRenderer|
	aCanvas header: HeaderRenderer new.
	answerRenderer:= AnswerRenderer new.
	answerRenderer question: question.
	answerRenderer renderQuestionOn: aCanvas.
	aCanvas horizontalRule.
	self renderAnswerFieldsOn: aCanvas.