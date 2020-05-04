test
testRemoveFollowingUserTo
	|newUser result|
	app createUser:'test' password:'test' name: 'test'.
	newUser:= app getUser:'test'.
	self assert: user following size equals: 0.
	app createFollowingUser: user to: newUser.
	self assert: user following size equals: 1.
	app removeFollowingUser: user to: newUser.
	self assert: user following size equals: 0.
	
	result:= user following select: [ :each | each == newUser ].
	
	self assert: result isEmpty equals: true.