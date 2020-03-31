modifying
upvote: user
	"Method to trigger an upvote"
	|userLog userIndex actionUpvote actionDownvote|
	userLog := nil.
	userIndex := nil.
	actionUpvote := 'UPVOTE'.
	actionDownvote := 'DOWNVOTE'.
	self.ActivityLog do:
		[
			:each :i | each.User = user
				ifTrue:[userLog := each . userIndex := i]
		].
	(userLog = nil)
	ifTrue: [self.Likes := self.Likes + 1 . self addLog: userIndex user: user action: 'UPVOTE']
	ifFalse: [
		userLog Action = 'DOWNVOTE'
		ifTrue: [
			self.Likes := self.Likes -1.
			self addLog: userIndex user: user action: 'DOWNVOTE'
		].
		userLog Action = 'UPVOTE'
		ifTrue: [
			self.Dislikes := self.Dislikes - 1.
			self.Likes := self.Likes + 1.
			self addLog: userIndex user: user action: 'UPVOTE'
		].
	]
	
	