test
testAddInterest
	|aTag|
	self assert: user interests size equals: 0.
	aTag:= Tag name: 'atag' description: 'testDesc'.
	user addInterest: aTag.
	self assert: user interests size equals: 1.
	self assert: user interests last equals: aTag.