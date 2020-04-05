tests
testGetUser
	|result|
	result:= app getUser: 'admin'.
	self assert: result username equals: 'admin'.