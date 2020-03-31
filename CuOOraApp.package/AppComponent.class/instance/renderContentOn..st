rendering
renderContentOn: aCanvas
	"Main app container"

	"aCanvas div with: [ Questions ]."

	aCanvas div
		with: [ aCanvas form.
			[ aCanvas
				paragraph: [ aCanvas label: 'Username: '.
					aCanvas textInput on: #newUserName of: self ].
			aCanvas
				paragraph: [ aCanvas label: 'Password: '.
					aCanvas textInput on: #newPassword of: self ].
			aCanvas button
				callback: [ self accept ];
				with: 'Accept'.
			aCanvas space.
			aCanvas button
				callback: [ self cancel ];
				with: 'Cancel' ] ]