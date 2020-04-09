rendering
renderQuestionFieldsOn: aCanvas
	aCanvas
		form: [ aCanvas label: 'Agregar pregunta: '.
			aCanvas paragraph: [ aCanvas textArea on: #title of: self ].
			aCanvas label: 'Descripcion: '.
			aCanvas paragraph: [ aCanvas textArea on: #description of: self ].
			aCanvas label: ' Topics '.
			aCanvas
				paragraph: [ aCanvas checkbox
						with: 'Checkbox test';
						onChange: aCanvas jQuery ajax serializeThisWithHidden;
						onClick:
							(aCanvas jQuery ajax
								callback: [ :selection | Transcript show: 'checkbox onClick hit.' ]);
						callback:
								[ :selection | Transcript show: 'checkbox callback hit.' ] ].
			aCanvas submitButton
				callback: [ self cancelResponse ];
				with: 'Cancelar'.
			aCanvas submitButton
				callback: [ self createResponse ];
				with: 'Guardar' ]