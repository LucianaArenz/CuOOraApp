rendering
renderQuestionFieldsOn: aCanvas
	aCanvas
		form: [
			aCanvas div: [
				aCanvas label: 'Titulo: '.
				aCanvas textInput on: #title of: self.
			].
			aCanvas space.
			aCanvas div: [
				aCanvas label: 'Desarrollo: '.
				aCanvas textArea on: #description of: self .
			].
			aCanvas space.
			aCanvas div: [
				aCanvas label: 'Topicos: '.
				aCanvas textInput on: #topics of: self .
			].
			aCanvas space.
			aCanvas div: [
				aCanvas submitButton
					callback: [ self cancelResponse ];
					with: 'Cancelar'.
				aCanvas submitButton
					callback: [ self createResponse ];
					with: 'Guardar'.
			].
		].