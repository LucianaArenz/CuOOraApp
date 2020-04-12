rendering
renderAnswersOn: aCanvas
	aCanvas
		div: [
			question answers do: [ :each | aCanvas paragraph with:
				[ self renderOneAnswerOn: aCanvas withDetails: each ].
				aCanvas horizontalRule.
			]
		].
	aCanvas div: 'No hay mas respuestas'.
	self renderNewAnswerOn: aCanvas.