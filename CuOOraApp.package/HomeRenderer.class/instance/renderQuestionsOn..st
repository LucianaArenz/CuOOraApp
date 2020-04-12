rendering
renderQuestionsOn: aCanvas
	|questionsRenderer recentQuestions|
	questionsRenderer := QuestionRenderer new.
	recentQuestions := OrderedCollection new.
	"only render last 5 questions"
	appInstance questions reverseDo:[
		:each | recentQuestions size < 5 ifTrue: [recentQuestions add: each]
	].
	questionsRenderer appInstance: appInstance.
	questionsRenderer questions: recentQuestions.
	questionsRenderer renderQuestionsOn: aCanvas.