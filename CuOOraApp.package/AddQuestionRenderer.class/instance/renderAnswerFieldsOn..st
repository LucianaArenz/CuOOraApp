rendering
renderAnswerFieldsOn: aCanvas
	aCanvas form: [
		aCanvas label: 'Agregar pregunta: '.
		aCanvas paragraph: [ aCanvas textArea on: #title of: self ].
		aCanvas label: 'Descripcion: '.
		aCanvas paragraph: [ aCanvas textArea on: #description of: self ].
		aCanvas label: ' Topics '.
		aCanvas submitButton
			callback: [ self cancelResponse ];
			with: 'Cancelar'.
		aCanvas submitButton
			callback: [ self createResponse ];
			with: 'Guardar'. ]