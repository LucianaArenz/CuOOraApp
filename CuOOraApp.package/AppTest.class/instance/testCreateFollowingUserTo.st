test
testCreateFollowingUserTo
	|newUser|
	app createUser:'test' password:'test' name: 'test'.
	newUser:= app getUser:'test'.
	self assert: user following size equals: 0.
	app createFollowingUser: user to: newUser.
	self assert: user following size equals: 1.