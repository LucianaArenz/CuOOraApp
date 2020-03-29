initialization
author: aUser creationDate: aDate text: aText question: aQuestion
	self new.
	super.Author := aUser.
	super.CreationDate := aDate.
	super.Likes := 0.
	super.Dislikes := 0.
	super.ActivityLog := OrderedCollection new.
	self.Text := aText.
	self.Question := aQuestion.
	self yourself.