rendering
renderAnswerOn: aCanvas

	aCanvas
		unorderedList: [ self collectAnswers
				do:
					[ :each | aCanvas listItem with: [ self oneAnswer: aCanvas and: each ] ] ]