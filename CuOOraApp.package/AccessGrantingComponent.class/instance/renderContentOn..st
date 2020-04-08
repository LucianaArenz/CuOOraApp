rendering
renderContentOn: aCanvas
	aCanvas header: HeaderRenderer new.
	aCanvas
		form: [
			self renderInputElementsOn: aCanvas.
			self renderButtonsOn: aCanvas
		].