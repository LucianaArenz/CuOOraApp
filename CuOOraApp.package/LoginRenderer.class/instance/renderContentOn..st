rendering
renderContentOn: aCanvas
	"comment stating purpose of message"
	aCanvas
		form: [ aCanvas
				paragraph: [ aCanvas label: 'Username: '.
					aCanvas textInput on: #username of: self ].
			aCanvas
				paragraph: [ aCanvas label: 'Password: '.
					aCanvas textInput on: #password of: self ].
			aCanvas button
				callback: [ self accept ];
				with: 'Accept'.
			aCanvas space.
			aCanvas button
				callback: [ self cancel ];
				with: 'Cancel' ]