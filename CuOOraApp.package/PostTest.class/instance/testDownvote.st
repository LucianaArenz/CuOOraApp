test
testDownvote
	self assert: post dislikes equals: 0.
	self assert: post likes equals: 0.
	post upvote: user.
	self assert: post dislikes equals: 0.
	self assert: post likes equals: 1.
	post downvote: user.
	self assert: post dislikes equals: 1.
	self assert: post likes equals: 0.
	post downvote: user2.
	self assert: post dislikes equals: 2.
	self assert: post likes equals: 0.