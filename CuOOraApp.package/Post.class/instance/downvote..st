modifying
downvote: user
	"Method to trigger a downvote"
	|userLog index|
	userLog := Log new.
	index := nil.
	self.ActivityLog do:
		[
			:each :i | each.user = user
				ifTrue:[userLog := each . index := i]
		].
	(userLog == nil)
	ifTrue: [self.Likes := self.Likes + 1 . self addLog: index user: user action: 'UPVOTE']
	ifFalse: [
		userLog Action = 'UPVOTE'
		ifTrue: [
			self.Likes := self.Likes -1.
			self addLog: index user: user action: 'UPVOTE'
		].
		userLog Action = 'DOWNVOTE'
		ifTrue: [
			self.Dislikes := self.Dislikes - 1.
			self.Likes := self.Likes + 1.
			self addLog: index user: user action: 'UPVOTE'
		].
	]
	
	