actions
createUserWithName: aUsername Password: aPassword date: aDate
	| user |
	user := User new.
	user username: aUsername password: aPassword.
	user creationDate: aDate.
	users add: user