initialization
setUp
	|aTag|
	date:= DateAndTime now.
	user:= User username: 'test' password: '1234' creationDate: date.
	topics:= OrderedCollection new.
	aTag:= Tag name: 'atag' description: 'testDesc'.
	topics add: aTag.
	