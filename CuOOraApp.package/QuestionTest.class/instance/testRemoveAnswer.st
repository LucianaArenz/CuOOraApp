tests
testRemoveAnswer
	"remove all answers from a question"
	| answer1 answer2 answer3 aDate |
	aDate:= DateAndTime now.
	self assert: question answers size equals: 0.
	answer1 := Answer author: user2 text: 'test1' question: question creationDate: aDate.
	answer2 := Answer author: user2 text: 'test2' question: question creationDate: aDate.
	answer3 := Answer author: user3 text: 'test3' question: question creationDate: aDate.
	user1 addAnswer: answer1.
	self assert: user1 answers size equals: 1.