private
proceedWith: aUser
	|home|
	self session user: aUser.
	home:= HomeRenderer new.
	home appInstance: self model.
	self call: home.