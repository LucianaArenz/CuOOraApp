rendering
renderQuestionsOn: aCanvas
	|questionsRenderer|
	questionsRenderer := QuestionRenderer new.
	questionsRenderer appInstance: appInstance.
	questionsRenderer homeLink: self.
	questionsRenderer renderQuestionsOn: aCanvas.