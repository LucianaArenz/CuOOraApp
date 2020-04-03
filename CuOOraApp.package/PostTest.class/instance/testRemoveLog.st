test
testRemoveLog
	|aLog|
	aLog:= Log user: user action: 'UPVOTE' timestamp: DateAndTime now.
	self assert: post activityLog size equals: 0.
	post addLog: aLog.
	self assert: post activityLog size equals: 1.
	post removeLog: aLog.
	self assert: post activityLog size equals: 0.