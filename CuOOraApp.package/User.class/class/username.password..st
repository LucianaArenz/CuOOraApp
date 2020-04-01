instance creation
username: aUsername password: aPassword
	|tmpUser|
	tmpUser:= self new.
	tmpUser initializeWithName: aUsername password: aPassword.
	^tmpUser.