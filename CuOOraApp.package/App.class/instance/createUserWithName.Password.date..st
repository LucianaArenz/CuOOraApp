actions
createUserWithName: aUsername Password: aPassword date: aDate
	| user |
	user := User new.
	user username: aUsername password: aPassword.
	user CreationDate: aDate.
	Users add: user