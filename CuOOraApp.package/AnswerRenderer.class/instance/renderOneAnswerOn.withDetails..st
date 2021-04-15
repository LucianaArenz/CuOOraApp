rendering
renderOneAnswerOn: aCanvas withDetails: answer
	aCanvas div: [ 
		aCanvas text: 'Respuesta de '.
		aCanvas anchor
			callback: [ self navigateToUser: answer author ];
			with: [
				aCanvas text: answer author name.
			].
	].
	aCanvas div: [
		aCanvas text: answer text.
	].
	aCanvas div: [
		self renderPostVotesOn: aCanvas withDetails: answer andUser: self session user.
	]