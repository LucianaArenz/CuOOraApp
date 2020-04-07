actions
getQuestionAnswersFromQuestion: aQuestion
	|qustionsAnsw result|
	result:= OrderedCollection new.
	qustionsAnsw:= questions detect: [ :question | question = aQuestion].
	qustionsAnsw ifNotNil: [ result:= qustionsAnsw answers ].
	^result.