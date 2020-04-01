actions
getQuestionAnswersFromQuestion: aQuestion
	questions
		do: [ :question | 
			question = aQuestion
				ifTrue: [ ^ question Answers ] ]