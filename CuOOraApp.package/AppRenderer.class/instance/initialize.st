initialization
initialize
	super initialize.
	app := App new.
	app initialize.
	app createUser: 'test' password: 'test'.
	"user := app users first.
	app loggedUser: user.
	app createTopicWithName: 'Topic' description: 'This is a topic'.
	aDate := DateAndTime now.
	app
		createQuestionWithAuthor: app loggedUser
		creationDate: aDate
		topics: app topics
		title: 'Title'
		description: 'Description'"