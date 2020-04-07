tests
testAddUserWithPassword
	self assert: app users size equals: 4.
	app createUser: 'Lu' password: '1234' name: 'Lu'.
	self assert: app users size equals: 5.
	self deny: app users size equals: 0