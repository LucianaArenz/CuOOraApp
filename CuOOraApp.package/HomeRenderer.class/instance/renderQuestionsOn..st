rendering
renderQuestionsOn: aCanvas
	|questionsRenderer|
	questionsRenderer := QuestionRenderer new.
	questionsRenderer appInstance: appInstance.
	questionsRenderer questions: appInstance questions.
	questionsRenderer homeLink: self.
	questionsRenderer renderQuestionsOn: aCanvas.