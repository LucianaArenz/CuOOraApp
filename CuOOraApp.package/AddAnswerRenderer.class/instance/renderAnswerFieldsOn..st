rendering
renderAnswerFieldsOn: aCanvas
	aCanvas form: [
		aCanvas label: 'RESPONDER'.
		aCanvas paragraph: [ aCanvas textArea on: #answerText of: self ].
		aCanvas submitButton
			callback: [ self cancelResponse ];
			with: 'Cancelar'.
		aCanvas submitButton
			callback: [ self createResponse ];
			with: 'Guardar'.
	]