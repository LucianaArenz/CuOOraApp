actions
createAnswerWithAuthor: aUser creationDate: aDate text: aText question: aQuestion
	| answer |
	answer := Answer author: aUser text: aText question: aQuestion creationDate: aDate.
	aUser addAnswer: answer.
	aQuestion addAnswer: answer.