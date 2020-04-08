as yet unclassified
navigateToUser: user
	|userRenderer|
	userRenderer:= UserRenderer new.
	userRenderer user: user.
	homeLink call: userRenderer.