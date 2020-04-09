adding
addQuestion
	|newRenderer|
	newRenderer:= AddQuestionRenderer new.
	newRenderer appInstance: appInstance.
	homeLink call: newRenderer.