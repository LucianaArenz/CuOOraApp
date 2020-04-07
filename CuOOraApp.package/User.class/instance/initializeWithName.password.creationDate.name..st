initialization
initializeWithName: aUsername password: aPassword creationDate: aDate name: aName
	username := aUsername.
	password := aPassword.
	name:= aName.
	creationDate := aDate.
	following := OrderedCollection new.
	interests := OrderedCollection new.
	questions := OrderedCollection new.
	answers := OrderedCollection new.