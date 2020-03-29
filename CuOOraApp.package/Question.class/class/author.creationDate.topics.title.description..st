initialization
author: aUser creationDate: aDate topics: someTopics title: aTitle description: aDescription
	self new.
	super.Author := aUser.
	super.CreationDate := aDate.
	super.Likes := 0.
	super.Dislikes := 0.
	super.ActivityLog := OrderedCollection new.
	self.Title := aTitle.
	self.Description := aDescription.
	self yourself.