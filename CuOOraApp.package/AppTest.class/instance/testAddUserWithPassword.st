tests
testAddUserWithPassword
	|result|
	self assert: app users size equals: 4.
	app createUser: 'Lu' password: '1234' name: 'Lu'.
	result:= app getUser: 'Lu'.
	self assert: result name equals: 'Lu'.