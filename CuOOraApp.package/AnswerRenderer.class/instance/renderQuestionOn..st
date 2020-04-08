accesing
renderQuestionOn: aCanvas
	aCanvas
	div: [ 
			aCanvas heading
				level: 4;
				with: question title.
			aCanvas
				paragraph: [
					self renderUserDetailsOn: aCanvas.
					self renderQuestionVotesOn: aCanvas withDetails: question andUser: question author
			].
		].