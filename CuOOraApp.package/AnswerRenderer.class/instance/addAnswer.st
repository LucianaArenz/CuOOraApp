adding
addAnswer
	|newRenderer|
	newRenderer:= AddAnswerRenderer new.
	newRenderer question: question.
	newRenderer appInstance: appInstance.
	homeLink call: newRenderer.