actions
createQuestionWithAuthor: aUser creationDate: aDate topics: aTag title: aTitle description: aDescription
	| question |
	question := Question new.
	question
		initializeWithAuthor: aUser
		description: aDescription
		title: aTitle
		topics: aTag
		creationDate: aDate.
	self questions add: question.
	aUser addQuestion: question