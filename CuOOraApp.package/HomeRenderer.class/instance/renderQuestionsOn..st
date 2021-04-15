rendering
renderQuestionsOn: aCanvas
	|questionsRenderer relevantQuestions|
	questionsRenderer := QuestionRenderer new.
	relevantQuestions := OrderedCollection new.

	relevantQuestions := appInstance questionsByInterestFor:self session user.
	(relevantQuestions size > 4)
		ifTrue: [ relevantQuestions:= relevantQuestions first: 5 ].
	questionsRenderer appInstance: appInstance.
	questionsRenderer questions: relevantQuestions.
	questionsRenderer renderQuestionsOn: aCanvas.