rendering
renderContentOn: aCanvas
	|answerRenderer|
	aCanvas header: HeaderRenderer new.
	answerRenderer:= AnswerRenderer new.
	answerRenderer question: question.
	aCanvas div id:'content'; with: [
		answerRenderer renderQuestionOn: aCanvas.
		aCanvas horizontalRule.
		self renderAnswerFieldsOn: aCanvas.
	].
	aCanvas footer: FooterRenderer new.