rendering
renderContentOn: aCanvas
	"Main app container"
	aCanvas anchor
		callback: [ self newSession ];
		with: [ aCanvas button: 'Login' ].
	"aCanvas div with: [ app questions first title ].
	aCanvas div with: [ app users ].
	aCanvas div with: [ app topics ]. "