actions
createListOfQuestions
	| userp userd userj aDate tag q1 q2|
   self createTopicWithName: 'OO1' description: 'Test de Unidad'.
	aDate := DateAndTime now.
	userp := User new.
	userd := User new.
	userj := User new.
	tag := self topics detect: [ :each | each name = 'OO1' ].
	userp := self users detect: [ :each | each username = 'pedro@cuoora.com' ].
	userd := self users detect: [ :each | each username = 'diego@cuoora.com' ].
	userj := self users detect: [ :each | each username = 'juan@cuoora.com' ].
	self
		createQuestionWithAuthor: userp
		creationDate: aDate
		topics: tag
		title: 'Para que sirve el metodo setUp? '
		description: 'blabla'.	
	self createTopicWithName: 'OO1' description: 'Smalltalk'.
	tag := self topics detect: [ :each | each name = 'OO1' ].
	
	self
		createQuestionWithAuthor: userd
		creationDate: aDate
		topics: tag
		title: 'Que significa #messageNotUnderstood?'
		description: 'blabla'.
		q1:= self questions detect: [:q | q title = 'Que significa #messageNotUnderstood?' ].
	self createAnswerWithAuthor: userp creationDate: aDate text: 'Significa que el objeto que recibio el mensaje no encontró ningún método para ejercutar en respuesta' question: q1.
	
	self createTopicWithName: 'OO1' description: 'Pharo'.
	tag := self topics detect: [ :each | each name = 'OO1' ].
	self
		createQuestionWithAuthor: userj
		creationDate: aDate
		topics: tag
		title: 'Diferencias entre metodos de instacia y metodos de clase'
		description: 'blabla'.
	q2:= self questions detect: [:q | q title = 'Diferencias entre metodos de instacia y metodos de clase' ].
	self createAnswerWithAuthor: userp creationDate: aDate text: 'Te dejo el link de un paper de la UNLP está muy bueno...' question: q2.
	self
		createQuestionWithAuthor: userj
		creationDate: aDate
		topics: tag
		title: 'Como hacer onexion de componentes?'
		description: 'blabla'.
	self
		createQuestionWithAuthor: userj
		creationDate: aDate
		topics: tag
		title: 'Esta bien construida la jerarquia'
		description: 'blabla'