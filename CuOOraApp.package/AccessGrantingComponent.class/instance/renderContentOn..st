rendering
renderContentOn: aCanvas
	aCanvas header: HeaderRenderer new.
	aCanvas div id:'content'; with:[
	aCanvas
		form: [
			self renderInputElementsOn: aCanvas.
			self renderButtonsOn: aCanvas
		].
	].
	aCanvas footer: FooterRenderer new.