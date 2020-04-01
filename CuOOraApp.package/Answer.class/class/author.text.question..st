initialization
author: aUser text: aText question: aQuestion
	|tmpAnswer|
	tmpAnswer:= self new.
	tmpAnswer initializeWithAuthor: aUser text: aText question: aQuestion.
	^tmpAnswer.