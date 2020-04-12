calculating
getUserLog: aUser
	|tmpLog|
	tmpLog:= activityLog detect: [:each | each user username = aUser username]
					ifNone:[nil].
	^tmpLog.