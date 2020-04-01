initialization
author: aUser description: aDescription title: aTitle topics: someTopics
	|tmpQuestion|
	tmpQuestion:= self new.
	tmpQuestion initializeWithAuthor: aUser description: aDescription title: aTitle topics: someTopics.
	^tmpQuestion.