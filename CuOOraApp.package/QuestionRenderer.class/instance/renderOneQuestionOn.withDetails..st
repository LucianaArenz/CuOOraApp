accessing
renderOneQuestionOn: aCanvas withDetails: oneQuestion
	| user |
	user := oneQuestion author.
	^ aCanvas
		div: [ self
				renderQuestionDetailsOn: aCanvas
				withDetails: oneQuestion
				user: user]