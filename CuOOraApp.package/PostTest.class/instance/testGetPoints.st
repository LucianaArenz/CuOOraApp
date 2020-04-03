test
testGetPoints
	post upvote: user.
	self assert: post getPoints equals: 1.
	post upvote: user2.
	self assert: post getPoints equals: 2.
	post downvote: user3.
	self assert: post getPoints equals: 1.
	
	