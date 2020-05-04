rendering
renderQuestionsOn: aCanvas
	|questionsRenderer relevantQuestions|
	questionsRenderer := QuestionRenderer new.
	relevantQuestions := OrderedCollection new.
	"only render last 5 questions"
	
	relevantQuestions := appInstance questionsByInterestFor:self session user.
	questionsRenderer appInstance: appInstance.
	questionsRenderer questions: relevantQuestions.
	questionsRenderer renderQuestionsOn: aCanvas.