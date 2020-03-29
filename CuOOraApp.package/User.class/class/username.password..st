instance creation
username: aUsername password: aPassword
	self new.
	self.Username := aUsername.
	self.Password := aPassword.
	self.CreationDate := DateAndTime now.
	self.Following := OrderedCollection new.
	self.Interests := OrderedCollection new.
	self.Questions := OrderedCollection new.
	self.Answers := OrderedCollection new.
	self yourself.