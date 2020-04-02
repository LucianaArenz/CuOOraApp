initialization
initializeWithName: aUsername password: aPassword creationDate: aDate
	username := aUsername.
	password := aPassword.
	creationDate := aDate.
	following := OrderedCollection new.
	interests := OrderedCollection new.
	questions := OrderedCollection new.
	answers := OrderedCollection new.