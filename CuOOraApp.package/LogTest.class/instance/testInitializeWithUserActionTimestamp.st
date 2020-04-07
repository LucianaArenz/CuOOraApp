tests
testInitializeWithUserActionTimestamp
	| log aDate|
	user := User new.
	aDate:= DateAndTime now.
	user initializeWithName: 'Lu' password: '1234' creationDate: aDate name: 'Lu'.
	log := Log new.
	log initializeWithUser: user action: 'UPVOTE' timestamp: aDate.
	self assert: log user equals: user.
	self assert: log action equals: 'UPVOTE'.
	self assert: log timestamp equals: aDate.