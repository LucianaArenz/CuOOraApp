callbacks
login: aUsername password: aPassword
	"tries to login a user. If succesfull returns the user, else nil"
	|result|
	result:= self getUser: aUsername.
	(result password = aPassword)
	ifNotNil:[self loggedUser: result];
	ifFalse:[result:= nil].
	^result.