initialization
initialize
	super initialize.
	app := App soleInstance.
	app initialize.
	app createUser: 'admin' password: 'admin'.
	loginRenderer:= LoginRenderer new.
	homeRenderer:= HomeRenderer new.
	homeRenderer appInstance: app.