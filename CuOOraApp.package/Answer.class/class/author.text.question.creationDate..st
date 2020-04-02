initialization
author: aUser text: aText question: aQuestion creationDate: aDate
	|tmpAnswer|
	tmpAnswer:= self new.
	tmpAnswer initializeWithAuthor: aUser text: aText question: aQuestion creationDate: aDate.
	^tmpAnswer.