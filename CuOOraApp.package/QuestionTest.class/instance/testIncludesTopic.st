test
testIncludesTopic
	|result|
	result:= question includesTopic: tag1.
	self assert: result equals: true.
	
	result:= question includesTopic: tag3.
	self assert: result equals: false.
	
	