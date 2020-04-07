initialization
initialize
	| app |
	super initialize.
	app := App soleInstance.
	app createListOfQuestions.