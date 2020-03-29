initialization
user: aUser action: anAction timestamp: aTimestamp
	self new .
	self.Action := anAction.
	self.Timestamp := aTimestamp.
	self.User := aUser.
	self yourself.