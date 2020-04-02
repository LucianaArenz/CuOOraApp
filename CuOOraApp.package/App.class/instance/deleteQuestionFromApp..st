actions
deleteQuestionFromApp: aQuestion
	"getQuestionAnswersFromQuestion: aQuestion FALTA IMPLEMENTAR LA ELIMINACION DE LAS RESPUESTAS A ESA PREGUNTA"

	(self questions detect: [ :question | question = aQuestion ])
		ifTrue: [ questions remove: aQuestion ].
	aQuestion Author deleteQuestionFromUser: aQuestion