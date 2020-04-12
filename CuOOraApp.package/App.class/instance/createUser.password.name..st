adding
createUser: username password: aPassword name: aName
	|tmpUser aTime|
	aTime:= DateAndTime now.
	tmpUser:= User username: username password: aPassword creationDate: aTime name: aName. 
	users add: tmpUser.