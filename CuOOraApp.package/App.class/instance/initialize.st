initialization
initialize
	super initialize.
	questions := OrderedCollection new.
	users := OrderedCollection new .
	topics := OrderedCollection new.
	questions add: 'First Question'; add: 'Second Question'.
	users add: 'First User'; add:'Second User'.
	topics add: 'First Topic'.