modifying
upvote: aUser
	"Method to trigger an upvote"
	|userLog|
	userLog := self getUserLog: aUser.
	userLog ifNil: [ 
		likes:= likes + 1.
		userLog:= Log user: aUser action: 'UPVOTE' timestamp: DateAndTime now.
		self addLog: userLog.
	].
	userLog ifNotNil: [
		userLog action = 'DOWNVOTE'
		ifTrue: [
			dislikes := dislikes - 1.
			likes:= likes + 1.
			self removeLog: userLog.
			userLog action: 'UPVOTE'.
			self addLog: userLog.
		]
	].
	
	