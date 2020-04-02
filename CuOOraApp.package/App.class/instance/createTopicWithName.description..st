actions
createTopicWithName: aName description: aDescription
	| topic |
	topic := Tag new.
	topic initializeWithName: aName description: aDescription.
	topics add: topic