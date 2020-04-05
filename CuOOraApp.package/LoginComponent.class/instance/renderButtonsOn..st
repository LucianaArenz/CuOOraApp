rendering
renderButtonsOn: aCanvas
	self renderSignInButtonOn: aCanvas.
	aCanvas horizontalRule.
	aCanvas paragraph: 'Don''t have an account?'.
	self renderSignUpButtonOn: aCanvas.