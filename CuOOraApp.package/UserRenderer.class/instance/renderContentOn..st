rendering
renderContentOn: aCanvas
	aCanvas header: HeaderRenderer new.
	aCanvas div: [
		aCanvas span: 'Preguntas de '.
		aCanvas span: user name.
		aCanvas space.
		self session user == user
			ifFalse: [ self renderFollowInformationOn: aCanvas. ]
			ifTrue: [ aCanvas text: '(Yo)' ].
	].
	self renderUserQuestionsOn: aCanvas.