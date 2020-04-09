rendering
renderContentOn: aCanvas
	aCanvas header: HeaderRenderer new.
	aCanvas horizontalRule.
	self renderAnswerFieldsOn: aCanvas