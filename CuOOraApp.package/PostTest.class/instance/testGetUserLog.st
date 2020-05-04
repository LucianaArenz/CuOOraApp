test
testGetUserLog
	|aLog response|
	aLog:= Log user: user action: 'UPVOTE' timestamp: DateAndTime now.
	post addLog: aLog.
	response:= post getUserLog: user2.
	self assert: response equals: nil.
	response:= post getUserLog: user.
	self assert: response equals: aLog.