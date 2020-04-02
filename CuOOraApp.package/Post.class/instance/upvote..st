modifying
upvote: user
	"Method to trigger an upvote"
	|userLog|
	userLog := self getUserLog: user.
	(userLog isNil)
	ifTrue: [
		likes:= likes + 1.
		self removeLog: userLog.
		userLog action: 'UPVOTE'.
		self addLog: userLog.
	]
	ifFalse: [
		userLog action = 'DOWNVOTE'
		ifTrue: [
			dislikes := dislikes - 1.
			likes:= likes + 1.
			self removeLog: userLog.
			userLog action: 'UPVOTE'.
			self addLog: userLog.
		]
	]
	
	