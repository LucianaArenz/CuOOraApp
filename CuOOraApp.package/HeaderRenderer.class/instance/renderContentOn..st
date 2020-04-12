rendering
renderContentOn: aCanvas
	|user|
	user:= self session user.
	aCanvas heading level: 1; with:'CuOOra'.
	(user isNotNil)
		ifTrue:[
			aCanvas span: [
				aCanvas text: self session user name.
				aCanvas space.
				aCanvas anchor
					callback: [ self logOut ];
					with: 'Logout' .
			].	
		].