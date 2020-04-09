rendering
renderNewAnswerOn: aCanvas
	aCanvas anchor
		callback: [ self addAnswer ];
		with: [ aCanvas text:'+ Agregar Respuesta' ]