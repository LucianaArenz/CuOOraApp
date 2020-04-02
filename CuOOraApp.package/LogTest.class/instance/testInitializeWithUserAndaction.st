tests
testInitializeWithUserAndaction
	| log |
	user := User new.
	user initializeWithName: 'Lu' password: '1234'.
	log := Log new.
	log initializeWithUser: user action: 'UPVOTE'.
	self assert: log user equals: user.
	self assert: log action equals: 'UPVOTE'