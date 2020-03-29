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
			:each :i | each.User.Username = user.Username
				ifTrue:[userLog := each . userIndex := i]
		].
	(userLog = nil)
	ifTrue: [self.Likes := self.Likes + 1 . self addLog: userIndex user actionUpvote]
	ifFalse: [
		userLog.Activity = actionDownvote
		ifTrue: [
			self.Likes := self.Likes -1.
			self addLog userIndex user actionUpvote
		].
		userLog.Activity = actionUpvote
		ifTrue: [
			self.Dislikes := self.Dislikes - 1.
			self.Likes := self.Likes + 1.
			self addLog userIndex user actionUpvote
		].
	]
	
	