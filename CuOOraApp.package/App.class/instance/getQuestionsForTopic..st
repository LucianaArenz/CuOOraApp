actions
getQuestionsForTopic: aTopic
	^questions select: [ :each | each includesTopic: aTopic ].