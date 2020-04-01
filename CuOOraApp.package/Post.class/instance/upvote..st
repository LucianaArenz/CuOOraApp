modifying
upvote: user
	"Method to trigger an upvote"
	|userLog userIndex|
	userLog := nil.
	userIndex := nil.
	ActivityLog do:
		[
			:each :i | each.User = user
				ifTrue:[userLog := each . userIndex := i]
		].
	(userLog isNil)
	ifTrue: [Likes := Likes + 1 . self addLog: userIndex user: user action: 'UPVOTE']
	ifFalse: [
		userLog Action = 'DOWNVOTE'
		ifTrue: [
			Likes := Likes -1.
			self addLog: userIndex user: user action: 'DOWNVOTE'
		].
		userLog Action = 'UPVOTE'
		ifTrue: [
			Dislikes := Dislikes - 1.
			Likes := Likes + 1.
			self addLog: userIndex user: user action: 'UPVOTE'
		].
	]
	
	