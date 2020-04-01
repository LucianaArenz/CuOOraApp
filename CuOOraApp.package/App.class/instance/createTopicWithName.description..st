actions
createTopicWithName: aName description: aDescription
	| topic |
	topic := Tag new.
	topic initialize.
	topic name: aName description: aDescription.
	Topics add: topic