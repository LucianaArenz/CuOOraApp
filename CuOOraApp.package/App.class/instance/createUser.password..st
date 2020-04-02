adding
createUser: username password: aPassword
	|tmpUser|
	tmpUser:= User username: username password: aPassword.
	users add: tmpUser.