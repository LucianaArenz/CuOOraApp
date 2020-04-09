test
testRemoveFollow
	|aUser|
	aUser:= User username: 'test2' password: '1234' creationDate: date name: 'test2'.
	self assert: user following size equals: 0.
	user addFollow: aUser.
	self assert: user following size equals: 1.
	user removeFollow: aUser.
	self assert: user following size equals: 0.