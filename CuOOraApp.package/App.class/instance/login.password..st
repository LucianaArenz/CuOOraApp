callbacks
login: aUsername password: aPassword
	"tries to login a user. If succesfull returns the user, else nil"
	|result|
	result:= users detect:[
		:each | each username = aUsername and:[
			each password = aPassword
			]
	].
	(result isNil)
	ifFalse: [ self loggedUser: result ].
	^result.