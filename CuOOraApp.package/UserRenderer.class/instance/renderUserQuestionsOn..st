rendering
renderUserQuestionsOn: aCanvas
	|questionsRenderer|
	questionsRenderer:= QuestionRenderer new.
	questionsRenderer appInstance: appInstance.
	questionsRenderer questions: user questions.
	questionsRenderer renderQuestionsOn: aCanvas.