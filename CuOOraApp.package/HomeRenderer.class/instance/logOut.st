callbacks
logOut
	|appRenderer|
	appInstance logOut.
	appRenderer:= AppRenderer new.
	self call: appRenderer.