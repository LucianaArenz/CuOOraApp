accessing
renderQuestionsOn: aCanvas
	aCanvas
		unorderedList: [ appInstance questions
				do:
					[ :each | aCanvas listItem with: [ self renderOneQuestionOn: aCanvas withDetails: each ] ] ]