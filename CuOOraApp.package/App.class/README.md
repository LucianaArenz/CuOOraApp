App comment: '
Main CuOOra class. Controls the whole application

Copiar lo siguiente en el playgroud para dejar la app lista con ejemplos y rutas:
|application appInstance|
appInstance:= App soleInstance.
appInstance createListOfQuestions.
application := WAAdmin register: LoginComponent asApplicationAt: 'cuoora'.
application sessionClass: SessionWithUser.'.