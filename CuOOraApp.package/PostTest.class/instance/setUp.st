initialization
setUp
	post:= Post new.
	post activityLog: OrderedCollection new.
	post author: String new.
	post creationDate: DateAndTime now.
	post dislikes: 0.
	post likes: 0.
	user:= User username: 'test' password: '1234' creationDate: DateAndTime now.
	user2:= User username: 'test1' password: '1234' creationDate: DateAndTime now.
	user3:= User username: 'test2' password: '1234' creationDate: DateAndTime now.