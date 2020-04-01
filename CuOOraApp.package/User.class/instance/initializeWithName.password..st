initialization
initializeWithName: aUsername password: aPassword
	username := aUsername.
	password := aPassword.
	creationDate := DateAndTime now.
	following := OrderedCollection new.
	interests := OrderedCollection new.
	questions := OrderedCollection new.
	answers := OrderedCollection new.