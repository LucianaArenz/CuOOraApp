rendering
renderInputElementsOn: aCanvas
	super renderInputElementsOn: aCanvas.
	aCanvas label: 'Nombre'.
	aCanvas paragraph: [ aCanvas textInput on: #name of: self ].