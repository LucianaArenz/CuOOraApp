test
testLoginPassword
	|aUsername aPassword result|
	aUsername:= 'admin'.
	aPassword:= 'admin'.
	result:= app login: aUsername password: aPassword.
	self assert: result username equals: aUsername.