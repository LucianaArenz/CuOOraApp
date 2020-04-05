rendering
renderLogoutOn: aCanvas
	aCanvas anchor
		callback: [ self logOut ];
		with: [ aCanvas button: 'Logout' ].