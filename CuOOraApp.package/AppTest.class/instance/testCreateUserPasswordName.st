test
testCreateUserPasswordName
	|newApp|
	newApp:= App new.
	self assert: newApp users size equals: 3.
	newApp createUser:'admin' password:'admin' name: 'admin'.
	self assert: newApp users size equals: 4.