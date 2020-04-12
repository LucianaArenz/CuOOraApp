rendering
renderNewAnswerOn: aCanvas
	aCanvas span id:'agregar'; with: [
		aCanvas span: '+'.
		aCanvas anchor
			callback: [ self addAnswer ];
			with: [ aCanvas text:'Agregar Respuesta' ].
	].