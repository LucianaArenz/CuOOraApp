initialization
initialize
	|user|
	super initialize.
	app:= App new .
	app createUser: 'test' password: 'test'.
	user:= app users first.
	app loggedUser: user.
	app createTopicWithName: 'Topic' description: 'This is a topic'.
	app createQuestionWithAuthor: app loggedUser topics: app topics  title: 'Title'  description: 'Description'.