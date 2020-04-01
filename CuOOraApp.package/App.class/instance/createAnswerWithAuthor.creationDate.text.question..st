actions
createAnswerWithAuthor: aUser creationDate: aDate text: aText question: aQuestion
	| answer |
	answer := Answer new.
	answer
		author: aUser
		creationDate: aDate
		text: aText
		question: aQuestion.
	aUser linkAnswers: answer