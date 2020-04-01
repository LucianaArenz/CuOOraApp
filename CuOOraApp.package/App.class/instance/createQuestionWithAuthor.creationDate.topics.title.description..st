actions
createQuestionWithAuthor: aUser creationDate: aDate topics: aTag title: aTitle description: aDescription
	| question |
	question := Question new.
	question initialize.
	question
		author: aUser
		creationDate: aDate
		topics: aTag
		title: aTitle
		description: aDescription.
	self Questions add: question.
	aUser Questions add: question