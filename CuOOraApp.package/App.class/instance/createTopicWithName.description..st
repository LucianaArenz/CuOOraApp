actions
createTopicWithName: aName description: aDescription
	| topic |
	topic := Tag new.
	topic name: aName description: aDescription.
	topics add: topic