rendering
renderContentOn: aCanvas
	self renderHeaderOn: aCanvas.
	aCanvas div id:'content'; with:[
		self renderQuestionsOn: aCanvas.
		self renderNewQuestionOn: aCanvas.
	].
	aCanvas footer: FooterRenderer new.