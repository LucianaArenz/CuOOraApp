modifying
downvote: user
	"Method to trigger a downvote"
	|userLog index|
	userLog := Log new.
	index := nil.
	activityLog do:
		[
			:each :i | each user == user
				ifTrue:[userLog := each . index := i]
		].
	(userLog isNil)
	ifTrue: [likes := likes + 1 . self addLog: index user: user action: 'DOWNVOTE']
	ifFalse: [
		userLog Action = 'UPVOTE'
		ifTrue: [
			likes := likes -1.
			self addLog: index user: user action: 'DOWNVOTE'
		]
	]
	
	