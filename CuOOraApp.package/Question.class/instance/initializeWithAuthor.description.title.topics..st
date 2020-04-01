initialization
initializeWithAuthor: aUser description: aDescription title: aTitle topics: someTopics
	self initialize.
	self author: aUser.
	answers:= OrderedCollection new.
	description:= aDescription.
	title:= aTitle.
	topics:= someTopics.