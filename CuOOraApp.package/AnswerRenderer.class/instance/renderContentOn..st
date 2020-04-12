rendering
renderContentOn: aCanvas
	aCanvas header: HeaderRenderer new.
	aCanvas div id:'content'; with: [
		self renderQuestionOn: aCanvas.
		aCanvas horizontalRule.
		self renderAnswersOn: aCanvas.
	].
	aCanvas footer: FooterRenderer new.