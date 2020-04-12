rendering
renderContentOn: aCanvas
	aCanvas header: HeaderRenderer new.
	aCanvas div id:'content'; with: [ 
		self renderQuestionFieldsOn: aCanvas.
	].
	aCanvas footer: FooterRenderer new.