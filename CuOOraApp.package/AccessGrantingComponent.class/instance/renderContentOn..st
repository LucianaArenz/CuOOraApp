rendering
renderContentOn: aCanvas
	aCanvas
		form: [
			self renderInputElementsOn: aCanvas.
			self renderButtonsOn: aCanvas
		].