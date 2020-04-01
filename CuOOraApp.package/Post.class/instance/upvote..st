modifying
upvote: user
	"Method to trigger an upvote"
	|userLog userIndex|
	userLog := nil.
	userIndex := nil.
	activityLog do:
		[
			:each :i | each.User = user
				ifTrue:[userLog := each . userIndex := i]
		].
	(userLog isNil)
	ifTrue: [likes := likes + 1 . self addLog: userIndex user: user action: 'UPVOTE']
	ifFalse: [
		userLog Action = 'DOWNVOTE'
		ifTrue: [
			likes := likes -1.
			self addLog: userIndex user: user action: 'DOWNVOTE'
		].
		userLog Action = 'UPVOTE'
		ifTrue: [
			dislikes := dislikes - 1.
			likes := likes + 1.
			self addLog: userIndex user: user action: 'UPVOTE'
		].
	]
	
	