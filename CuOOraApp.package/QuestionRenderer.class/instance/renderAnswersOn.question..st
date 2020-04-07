rendering
renderAnswersOn: aCanvas question: oneQuestion
	| user answers |
	answers := oneQuestion answers.
	aCanvas
		div: [ aCanvas text: 'Aca mas adelante listamos las respuestas' ]