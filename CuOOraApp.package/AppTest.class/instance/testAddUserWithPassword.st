tests
testAddUserWithPassword
	| app |
	app := App new.
	app initialize.
	app addUser: 'Lu' password: '1234'.
	self assert: app users size equals: 1.
	self deny: app users size equals: 0