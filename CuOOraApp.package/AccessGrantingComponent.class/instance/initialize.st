accessing
initialize
	| app |
	super initialize.
	app := App soleInstance.
	app initialize.
	app createUser: 'admin' password: 'admin'.
	app createListOfQuestions