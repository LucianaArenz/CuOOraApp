private-creation
createListOfQuestions
	| userp userd userj aDate tagP1 tagP2 tagP3 tagP4 tag1 tag2 tag3 tag4 q1 q2|
	tagP1:= OrderedCollection new. 
	tagP2:= OrderedCollection new.
	tagP3:= OrderedCollection new.
	tagP4:= OrderedCollection new.
   self createTopicWithName: 'OO1' description: 'OO1'.
	tag1 := self topics detect: [ :each | each name = 'OO1' ].
   self createTopicWithName: 'Test de Unidad' description: 'Test de Unidad'.
	tag2 := self topics detect: [ :each | each name = 'Test de Unidad' ].
	self createTopicWithName: 'Smalltalk' description: 'Smalltalk'.
	tag3 := self topics detect: [ :each | each name = 'Smalltalk' ].
	self createTopicWithName: 'Pharo' description: 'Pharo'.
	tag4 := self topics detect: [ :each | each name = 'Pharo' ].
	aDate := DateAndTime now.
	userp := User new.
	userd := User new.
	userj := User new.
	tagP1 add: tag1; add: tag2.
	tagP2 add: tag1; add: tag3.
	tagP3 add: tag1.
	tagP4 add: tag4.
	userp := self users detect: [ :each | each username = 'pedro@cuoora.com' ].
	userd := self users detect: [ :each | each username = 'diego@cuoora.com' ].
	userj := self users detect: [ :each | each username = 'juan@cuoora.com' ].
	userd interests add: tag1.
	self
		createQuestionWithAuthor: userp
		creationDate: aDate
		topics: tagP1
		title: 'Para que sirve el metodo setUp? '
		description: 'blabla'.	
	self createTopicWithName: 'OO1' description: 'Smalltalk'.
	
	self
		createQuestionWithAuthor: userd
		creationDate: aDate
		topics: tagP2
		title: '¿Qué significa #messageNotUnderstood?'
		description: 'blabla'.
		q1:= self questions detect: [:q | q title = '¿Qué significa #messageNotUnderstood?' ].
	self createAnswerWithAuthor: userp creationDate: aDate text: 'Significa que el objeto que recibio el mensaje no encontró ningún método para ejercutar en respuesta' question: q1.
	
	self
		createQuestionWithAuthor: userj
		creationDate: aDate
		topics: tagP3
		title: 'Diferencias entre metodos de instacia y metodos de clase'
		description: 'blabla'.
	q2:= self questions detect: [:q | q title = 'Diferencias entre metodos de instacia y metodos de clase' ].
	self createAnswerWithAuthor: userp creationDate: aDate text: 'Te dejo el link de un paper de la UNLP está muy bueno...' question: q2.
	
	self
		createQuestionWithAuthor: userj
		creationDate: aDate
		topics: tagP4
		title: 'Como hacer conexion de componentes?'
		description: 'blabla'.
	self
		createQuestionWithAuthor: userj
		creationDate: aDate
		topics: tagP4
		title: 'Esta bien construida la jerarquia?'
		description: 'blabla'