tests
testGetOrderedAnswers
	"Get Anserws ordered by rating"
	| answer1 answer2 answer3 orderedAnswers expectedTop expectedLast aDate |
	aDate:= DateAndTime now.
	answer1 := Answer author: user2 text: 'test1' question: question creationDate: aDate.
	answer2 := Answer author: user2 text: 'test2' question: question creationDate: aDate.
	answer3 := Answer author: user3 text: 'test3' question: question creationDate: aDate.
	answer2 upvote: user1. answer2 upvote: user2. answer2 upvote: user3.
	answer3 upvote: user3.
	expectedTop:= answer2.
	expectedLast:= answer1.
	question addAnswer: answer1. question addAnswer: answer2. question addAnswer: answer3.
	orderedAnswers:= question getOrderedAnswers.
	self assert: orderedAnswers first text equals: expectedTop text.
	self assert: orderedAnswers last text equals: expectedLast text.