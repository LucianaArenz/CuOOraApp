initialization
initialize
	super initialize.
	appInstance:= nil.
	questionRenderer := QuestionRenderer new.
	answerRenderer := AnswerRenderer new.
	