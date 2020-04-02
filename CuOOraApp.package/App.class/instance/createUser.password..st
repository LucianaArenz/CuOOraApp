adding
createUser: username password: aPassword
	|tmpUser aTime|
	aTime:= DateAndTime now.
	tmpUser:= User username: username password: aPassword creationDate: aTime.
	users add: tmpUser.