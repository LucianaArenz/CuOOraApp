initialization
username: aUser password: aString
	Username := aUser.
	Password := aString.
	Following := User asOrderedCollection new.
	Questions := Question asOrderedCollection new.
	Interests := Tag asOrderedCollection new