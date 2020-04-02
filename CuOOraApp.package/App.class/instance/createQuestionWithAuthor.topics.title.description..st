actions
createQuestionWithAuthor: aUser topics: someTags title: aTitle description: aDescription
	| question |
	question := Question author: aUser description: aDescription title: aTitle topics: someTags.
	questions add: question.
	aUser addQuestion: question.