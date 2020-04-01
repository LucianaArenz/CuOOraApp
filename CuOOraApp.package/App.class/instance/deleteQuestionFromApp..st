actions
deleteQuestionFromApp: aQuestion
	"getQuestionAnswersFromQuestion: aQuestion FALTA IMPLEMENTAR LA ELIMINACION DE LAS RESPUESTAS A ESA PREGUNTA"

	(self Questions detect: [ :question | question = aQuestion ])
		ifTrue: [ Questions remove: aQuestion ].
	aQuestion Author deleteQuestionFromUser: aQuestion