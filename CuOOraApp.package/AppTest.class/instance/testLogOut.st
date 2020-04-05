test
testLogOut
	|aUsername aPassword result|
	aUsername:= 'admin'.
	aPassword:= 'admin'.
	result:= app login: aUsername password: aPassword.
	self assert: app loggedUser username equals: result username.
	app logOut.
	self assert: app loggedUser equals: nil.