actions
createQuestionWithAuthor: aUser creationDate: aDate topics: someTags title: aTitle description: aDescription
	| question tags |
	tags:= self parseAndCreateTags: someTags.
	question := Question
		author: aUser
		description: aDescription
		title: aTitle
		topics: tags
		creationDate: aDate.
	questions add: question.
	aUser addQuestion: question.