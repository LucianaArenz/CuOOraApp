actions
getQuestionAnswersFromQuestion: aQuestion
	|result|
	result:= questions detect: [ :question | question = aQuestion]
				ifNone: [ nil ].
	(result isNil)
	ifFalse: [ ^result answers ]
	ifTrue: [ ^OrderedCollection new . ]