test
testCreateUserPasswordName
	|newApp result|
	newApp:= App new.
	self assert: newApp users size equals: 3.
	newApp createUser:'admin' password:'admin' name: 'admin'.
	result:= newApp getUser: 'admin'.
	self assert: newApp users size equals: 4.
	self assert: result username equals: 'admin'.