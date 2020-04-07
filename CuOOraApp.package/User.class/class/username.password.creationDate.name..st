instance creation
username: aUsername password: aPassword creationDate: aDate name: aName
	|tmpUser|
	tmpUser:= self new.
	tmpUser initializeWithName: aUsername password: aPassword creationDate: aDate name: aName.
	^tmpUser.