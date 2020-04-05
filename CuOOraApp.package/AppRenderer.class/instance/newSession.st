callbacks
newSession 
	|loggedUser|
	loggedUser:= nil.
	self call: loginRenderer.
	loggedUser:= (app login: loginRenderer username password: loginRenderer password).
	(loggedUser isNil)
	ifFalse: [
		"User exists and has logged in"
		self call: homeRenderer.
	].