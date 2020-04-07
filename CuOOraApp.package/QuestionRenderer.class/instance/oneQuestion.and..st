accessing
oneQuestion: aCanvas and: oneQuestion
	| user cantAnswers |
	user := oneQuestion author.
	cantAnswers := oneQuestion answers size.
	^ aCanvas
		div: [ self
				show: aCanvas
				question: oneQuestion
				with: user
				andAnswers: cantAnswers ]