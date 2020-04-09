rendering
renderNewQuestionOn: aCanvas
		aCanvas anchor
		callback: [ self addQuestion ];
		with: [ aCanvas text:'+ Agregar Pregunta' ]