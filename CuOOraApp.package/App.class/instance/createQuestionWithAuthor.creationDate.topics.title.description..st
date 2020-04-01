actions
createQuestionWithAuthor: aUser creationDate: aDate topics: aTag title: aTitle description: aDescription
	| question |
	question := Question new.
	question
		author: aUser
		creationDate: aDate
		topics: aTag
		title: aTitle
		description: aDescription.
	self Questions add: question.
	aUser addQuestion: question