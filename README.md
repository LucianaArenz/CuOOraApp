# CuOOraApp
Aplicacion de entrega para Orientación a Objetos 2 en seaside.

## Para correr la app
- Abrir el playground
- Escribir lo siguiente:
```
|cuoora|
cuoora:= WAAdmin register: LoginComponent asApplicationAt: 'cuoora'.
cuoora preferenceAt: #sessionClass put: SessionWithUser.
App soleInstance createListOfQuestions.
```
- Seleccionar todo, click derecho, `Do It`
