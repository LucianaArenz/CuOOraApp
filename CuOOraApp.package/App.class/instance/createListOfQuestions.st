actions
createListOfQuestions
	| user aDate tag |
   self createTopicWithName: 'OO1' description: 'Test de Unidad'.
	aDate := DateAndTime now.
	user := User new.
	tag := self topics detect: [ :each | each name = 'OO1' ].
	user := self users detect: [ :each | each username = 'pedro@cuoora.com' ].
	self
		createQuestionWithAuthor: user
		creationDate: aDate
		topics: tag
		title: 'Para que sirve el metodo setUp? '
		description: 'blabla'.
	self createTopicWithName: 'OO1' description: 'Smalltalk'.
	aDate := DateAndTime now.
	tag := self topics detect: [ :each | each name = 'OO1' ].
	user := self users detect: [ :each | each username = 'diego@cuoora.com' ].
	self
		createQuestionWithAuthor: user
		creationDate: aDate
		topics: tag
		title: 'Que significa #messageNotUnderstood?'
		description: 'blabla'.
	self createTopicWithName: 'OO1' description: 'Pharo'.
	aDate := DateAndTime now.
	tag := self topics detect: [ :each | each name = 'OO1' ].
	user := self users detect: [ :each | each username = 'juan@cuoora.com' ].
	self
		createQuestionWithAuthor: user
		creationDate: aDate
		topics: tag
		title: 'Diferencias entre metodos de instacia y metodos de clase'
		description: 'blabla'.
	self
		createQuestionWithAuthor: user
		creationDate: aDate
		topics: tag
		title: 'Como hacer onexion de componentes?'
		description: 'blabla'.
	self
		createQuestionWithAuthor: user
		creationDate: aDate
		topics: tag
		title: 'Esta bien construida la jerarquia'
		description: 'blabla'