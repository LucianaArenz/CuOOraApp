initialization
user: aUser action: anAction
	|tmpLog|
	tmpLog:= self new.
	tmpLog initializeWithUser: aUser action: anAction.
	^tmpLog.