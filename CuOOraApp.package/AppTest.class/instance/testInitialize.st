test
testInitialize
	|newApp|
	newApp:= App new.
	self assert: newApp questions size equals: 0.
	self assert: newApp users size equals: 3.
	self assert: newApp topics size equals: 0.
	