rendering
renderUserDetailsOn: aCanvas
	aCanvas text: 'Realizada por: '.
	aCanvas anchor
		callback: [ self navigateToUser: question author ];
		with: [
			aCanvas text: question author name.
		].