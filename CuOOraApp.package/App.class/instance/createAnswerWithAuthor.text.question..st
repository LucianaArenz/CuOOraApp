actions
createAnswerWithAuthor: aUser text: aText question: aQuestion
	| answer |
	answer := Answer author: aUser text: aText question: aQuestion.
	aUser addAnswer: answer.