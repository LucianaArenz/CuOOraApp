rendering
renderSignUpButtonOn: aCanvas
	aCanvas submitButton
		callback: [ self registerNewUser ];
		with: 'Sign Up, it''s free'.