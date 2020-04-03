test
testAddFollow
	|aUser|
	aUser:= User username: 'test2' password: '1234' creationDate: date.
	self assert: user following size equals: 0.
	user addFollow: aUser.
	self assert: user following size equals: 1.