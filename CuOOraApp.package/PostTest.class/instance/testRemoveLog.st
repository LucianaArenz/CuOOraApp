test
testRemoveLog
	|aLog anotherLog|
	aLog:= Log user: user action: 'UPVOTE' timestamp: DateAndTime now.
	anotherLog:= Log user: user2 action: 'DOWNVOTE' timestamp: DateAndTime now.
	self assert: post activityLog size equals: 0.
	post addLog: aLog.
	post addLog: anotherLog.
	self assert: post activityLog size equals: 2.
	post removeLog: aLog.
	self assert: post activityLog size equals: 1.
	post activityLog do: [ :each | self deny: each equals: aLog ]