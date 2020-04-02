actions
createQuestionWithAuthor: aUser creationDate: aDate topics: someTags title: aTitle description: aDescription
	| question |
	question := Question author: aUser description: aDescription title: aTitle topics: someTags creationDate: aDate.
	questions add: question.
	aUser addQuestion: question.