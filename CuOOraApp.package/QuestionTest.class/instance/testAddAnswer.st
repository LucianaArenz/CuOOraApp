adding
testAddAnswer
	"erases 1 answer from collection"
	|answer1 aDate|
	aDate:= DateAndTime now.
	self assert: question answers size equals: 0.
	answer1 := Answer author: user2 text: 'test1' question: question creationDate: aDate.
	question addAnswer: answer1.
	self assert: question answers size equals: 1.