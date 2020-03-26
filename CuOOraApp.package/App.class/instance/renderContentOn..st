rendering
renderContentOn: aCanvas
	aCanvas paragraph with: 'Hello World'.
	aCanvas paragraph with: [ aCanvas div with: topics ].
	aCanvas paragraph with: [ aCanvas div with: users  ].
	aCanvas paragraph with: [ aCanvas div with: questions  ].