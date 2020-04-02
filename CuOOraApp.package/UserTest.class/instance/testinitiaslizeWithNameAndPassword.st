tests
testinitiaslizeWithNameAndPassword
	 
	user := User new.
	user initializeWithName: 'Lu' password: '1234'.
	self assert: user username equals: 'Lu'.
	self assert: user password equals: '1234'.
	self assert: user creationDate asDate equals: DateAndTime now asDate.
	self assert: user following size equals: 0.
	self assert: user interests size equals: 0.
	self assert: user questions size equals: 0.
	self assert: user answers size equals: 0