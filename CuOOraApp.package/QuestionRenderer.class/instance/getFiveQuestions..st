utilities
getFiveQuestions: app
	| questions |
	questions := app questions
		asSortedCollection:
			[ :question1 :question2 | question1 creationDate < question2 creationDate ].
	^ questions first: 5