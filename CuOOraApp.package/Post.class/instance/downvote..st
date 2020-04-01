modifying
downvote: user
	"Method to trigger a downvote"
	|userLog index|
	userLog := Log new.
	index := nil.
	ActivityLog do:
		[
			:each :i | each.user = user
				ifTrue:[userLog := each . index := i]
		].
	(userLog isNil)
	ifTrue: [Likes := Likes + 1 . self addLog: index user: user action: 'UPVOTE']
	ifFalse: [
		userLog Action = 'UPVOTE'
		ifTrue: [
			Likes := Likes -1.
			self addLog: index user: user action: 'UPVOTE'
		].
		userLog Action = 'DOWNVOTE'
		ifTrue: [
			Dislikes := Dislikes - 1.
			Likes := Likes + 1.
			self addLog: index user: user action: 'UPVOTE'
		].
	]
	
	