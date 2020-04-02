modifying
downvote: user
	"Method to trigger an upvote"
	|userLog|
	userLog := self getUserLog: user.
	(userLog isNil)
	ifTrue: [
		dislikes= dislikes + 1.
		self removeLog: userLog.
		userLog action: 'DOWNVOTE'.
		self addLog: userLog.
	]
	ifFalse: [
		userLog action = 'UPVOTE'
		ifTrue: [
			likes := likes - 1.
			dislikes:= dislikes + 1.
			self removeLog: userLog.
			userLog action: 'DOWNVOTE'.
			self addLog: userLog.
		]
	]
	
	