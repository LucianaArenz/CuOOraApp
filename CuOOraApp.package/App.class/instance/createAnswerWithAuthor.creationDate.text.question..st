actions
createAnswerWithAuthor: aUser creationDate: aDate text: aText question: aQuestion
	| answer |
	answer := Answer new.
	answer
		initializeWithAuthor: aUser
		text: aText
		question: aQuestion
		creationDate: aDate.
	aUser linkAnswers: answer