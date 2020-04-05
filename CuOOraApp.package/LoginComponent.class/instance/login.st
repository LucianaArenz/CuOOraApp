private protocol
login
	(self model login: username password: password)
		ifNotNil: [ :it | self proceedWith: it ].
	username := nil.
	password := nil.