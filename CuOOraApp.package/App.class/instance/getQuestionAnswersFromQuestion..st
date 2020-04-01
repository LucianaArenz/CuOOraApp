actions
getQuestionAnswersFromQuestion: aQuestion
	Questions
		do: [ :question | 
			question = aQuestion
				ifTrue: [ ^ question Answers ] ]