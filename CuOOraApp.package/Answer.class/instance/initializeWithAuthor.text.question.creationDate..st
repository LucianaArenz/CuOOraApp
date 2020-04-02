initialization
initializeWithAuthor: aUser text: aText question: aQuestion creationDate: aDate
	self initialize.
	self author: aUser.
	text := aText.
	question := aQuestion.
	self creationDate: aDate