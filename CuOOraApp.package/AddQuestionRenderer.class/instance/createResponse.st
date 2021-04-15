callbacks
createResponse
	|topicNames someTopics|
	someTopics:= OrderedCollection new.
	topicNames:= OrderedCollection new.
	topicNames:= topics splitOn: ','.
	someTopics:= topicNames collect: [ :each | (Tag name:each trimBoth description: each trimBoth) ].
	appInstance createQuestionWithAuthor:
		self session user
		creationDate: DateAndTime now
		topics: someTopics
		title: title
		description: description.
	self answer.