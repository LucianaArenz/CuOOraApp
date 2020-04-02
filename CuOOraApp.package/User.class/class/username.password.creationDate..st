instance creation
username: aUsername password: aPassword creationDate: aDate
	|tmpUser|
	tmpUser:= self new.
	tmpUser initializeWithName: aUsername password: aPassword creationDate: aDate.
	^tmpUser.