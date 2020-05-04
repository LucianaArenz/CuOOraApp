adding
addInterest: anInterest
	interests detect: [ :each | each == anInterest ]
		ifNone:[ interests add: anInterest].