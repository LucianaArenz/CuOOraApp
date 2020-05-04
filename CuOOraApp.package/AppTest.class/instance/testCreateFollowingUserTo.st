test
testCreateFollowingUserTo
	|newUser result|
	app createUser:'test' password:'test' name: 'test'.
	newUser:= app getUser:'test'.
	
	self assert: user following size equals: 0.
	
	app createFollowingUser: user to: newUser.
	result:= user following select: [ :each | each == newUser ].
	
	self assert: result first name equals: 'test'.