initialization
user: aUser action: anAction timestamp: aTimestamp
	|tmpLog|
	tmpLog:= self new.
	tmpLog initializeWithUser: aUser action: anAction timestamp: aTimestamp.
	^tmpLog.