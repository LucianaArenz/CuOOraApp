test
testGetAllTopicsName
	|tag|
	self assert: question getAllTopicsName first equals: 'OO'.
	self assert: question getAllTopicsName last equals: 'test'.
	tag:= Tag name: 'Test de Unidad' description: 'Test de Unidad'.
	question topics add: tag.
	self assert: question getAllTopicsName last equals: 'Test de Unidad'.