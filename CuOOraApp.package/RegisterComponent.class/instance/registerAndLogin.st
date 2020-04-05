callbacks
registerAndLogin
	|aUser|
	self model createUser: username password: password.
	aUser:= self model login:username password: password.
	self proceedWith: aUser.