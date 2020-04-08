callbacks
navigateToUser: user
	|userRenderer|
	userRenderer:= UserRenderer new.
	userRenderer user: user.
	userRenderer appInstance: appInstance.
	homeLink call: userRenderer.