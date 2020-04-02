calculating
getUserLog: aUser
	|tmpLog|
	tmpLog:= activityLog detect: [:each | each user == aUser]
					ifNone:[nil].
	^tmpLog.