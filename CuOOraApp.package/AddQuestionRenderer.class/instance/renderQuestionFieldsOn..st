rendering
renderQuestionFieldsOn: aCanvas
	aCanvas
		form: [ aCanvas label: 'Agregar pregunta: '.
			aCanvas paragraph: [ aCanvas textArea on: #title of: self ].
			aCanvas label: 'Descripcion: '.
			aCanvas paragraph: [ aCanvas textArea on: #description of: self ].
			self renderTopics: aCanvas.
			aCanvas submitButton
				callback: [ self cancelResponse ];
				with: 'Cancelar'.
			aCanvas submitButton
				callback: [ self createResponse ];
				with: 'Guardar' ]