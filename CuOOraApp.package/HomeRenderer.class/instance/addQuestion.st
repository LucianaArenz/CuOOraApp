adding
addQuestion
	|newRenderer|
	newRenderer:= AddQuestionRenderer new.
	newRenderer appInstance: appInstance.
	self call: newRenderer.