rendering
renderOneAnswerOn: aCanvas withDetails: answer
	aCanvas div: [ 
		aCanvas text: 'Respuesta de '.
		answer author.
	].