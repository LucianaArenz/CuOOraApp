rendering
renderSignInButtonOn: aCanvas
	aCanvas submitButton
		callback: [ self login ];
		with: 'Sign In'.