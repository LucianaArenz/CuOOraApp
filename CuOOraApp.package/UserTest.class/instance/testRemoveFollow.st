test
testRemoveFollow
	|aUser aUser2|
	aUser:= User username: 'test2' password: '1234' creationDate: date name: 'test2'.
	aUser2:= User username: 'test22' password: '1234' creationDate: date name: 'test22'.
	self assert: user following size equals: 0.
	user addFollow: aUser.
	user addFollow: aUser2.
	self assert: user following size equals: 2.
	user removeFollow: aUser.
	self assert: user following size equals: 1.
	user following do: [ :each | self deny: each equals: aUser ].