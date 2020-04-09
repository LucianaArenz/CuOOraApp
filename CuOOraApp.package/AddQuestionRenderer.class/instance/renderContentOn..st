rendering
renderContentOn: aCanvas
	self topics: OrderedCollection new.
	aCanvas header: HeaderRenderer new.
	self renderQuestionFieldsOn: aCanvas