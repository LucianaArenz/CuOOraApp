rendering
renderContentOn: aCanvas
	"Main app container"
	(app loggedUser isNil)
	ifTrue:[
		aCanvas anchor
			callback: [ self newSession ];
			with: [ aCanvas button: 'Login' ].
	]
	ifFalse:[
		aCanvas div: homeRenderer
	].