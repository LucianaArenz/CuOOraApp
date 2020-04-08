rendering
renderUserDetailsOn: aCanvas withDetails: aUser
	aCanvas text: 'Realizada por: '.
	aCanvas anchor
		callback: [ self navigateToUser: aUser ];
		with: [
			aCanvas text: aUser name.
		].