modifying
downvote: aUser
	"Method to trigger a downvote"
	|userLog|
	userLog := self getUserLog: aUser.
	userLog ifNil: [
		dislikes:= dislikes + 1.
		userLog:= Log user: aUser action: 'DOWNVOTE' timestamp: DateAndTime now.
		self addLog: userLog.
	].
	userLog ifNotNil: [
		userLog action = 'UPVOTE'
		ifTrue: [
			likes := likes - 1.
			dislikes:= dislikes + 1.
			self removeLog: userLog.
			userLog:= Log user: aUser action: 'DOWNVOTE' timestamp: DateAndTime now.
			self addLog: userLog.
		]
	].
	
	