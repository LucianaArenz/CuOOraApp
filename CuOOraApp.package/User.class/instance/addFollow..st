adding
addFollow: anotherUser
	following detect: [ :each | each = anotherUser ]
		ifNone: [ following add: anotherUser. ].