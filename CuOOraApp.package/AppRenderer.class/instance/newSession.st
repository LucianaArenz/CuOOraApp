callbacks
newSession
	| sesionLog aUser |
	sesionLog := LoginRenderer user: User new.
	self call: sesionLog.
	sesionLog user ifNotNil: [ app login: sesionLog user ].
	aUser := app users
		detect: [ :each | 
			each username = sesionLog user username
				and: [ each password = sesionLog user password ] ]
		ifNone: [ ^ self ].	"Chequeo de si el usuario que inicia sesion esta en mi coleccion de users"
	self loggedUser: sesionLog user "Si esta en la coleccion, lo seteo"
	"self call: (UserRenderer with: aUser). Se deberia redirigir a otra vista, o a la app si es que se puede pasar a otro canvas."