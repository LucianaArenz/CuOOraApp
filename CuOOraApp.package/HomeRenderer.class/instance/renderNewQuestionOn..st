rendering
renderNewQuestionOn: aCanvas
	aCanvas span id:'agregar'; with: [
		aCanvas span: '+'.
		aCanvas anchor
			callback: [ self addQuestion ];
			with: [ aCanvas text:'Agregar Pregunta' ].
	].
	