calculating
questionsByInterestFor: aUser
	^ questions select: [ :question | (question checkTag: aUser interests) ]