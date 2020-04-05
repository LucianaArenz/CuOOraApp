initialization
setUp
	app:= App new.
	app initialize.
	app createUser:'admin' password:'admin'.
	answerOne:= nil.
	answerTwo:= nil.
	app