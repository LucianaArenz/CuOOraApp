modifying
downvote: aUser
	"Method to trigger a downvote"
	|userLog|
	userLog := self getUserLog: aUser.
	(userLog isNil)
	ifTrue: [
		dislikes:= dislikes + 1.
		userLog:= Log user: aUser action: 'DOWNVOTE' timestamp: DateAndTime now.
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
	
	