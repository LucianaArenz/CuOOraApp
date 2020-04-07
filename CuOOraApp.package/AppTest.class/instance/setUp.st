initialization
setUp
	app:= App new.
	app initialize.
	app createUser:'admin' password:'admin' name: 'admin'.
	user:= app getUser: 'admin'.
	answerOne:= nil.
	answerTwo:= nil.