initialization
initialize
	super initialize.
	loginRenderer := LoginRenderer new.
	homeRenderer := HomeRenderer new.
	homeRenderer appInstance: app