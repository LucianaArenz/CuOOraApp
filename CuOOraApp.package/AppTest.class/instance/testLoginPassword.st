test
testLoginPassword
	|aUsername aPassword result|
	aUsername:= 'admin'.
	aPassword:= 'admin'.
	self assert: app loggedUser equals: nil.
	result:= app login: aUsername password: aPassword.
	self assert: result equals: app loggedUser.
	self assert: app loggedUser username equals: aUsername.