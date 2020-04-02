actions
createTopicWithName: aName description: aDescription
	| topic |
	topic := Tag name: aName description: aDescription.
	topics add: topic.