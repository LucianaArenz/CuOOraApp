accessing
renderQuestionOn: aCanvas
	answerRenderer := AnswerRenderer new.
	aCanvas
		unorderedList: [ appInstance questions
				do:
					[ :each | aCanvas listItem with: [ self oneQuestion: aCanvas and: each ] ] ]