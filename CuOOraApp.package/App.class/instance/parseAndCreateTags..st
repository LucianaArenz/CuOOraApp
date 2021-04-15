parsing
parseAndCreateTags: someTags
	|auxTag result|
	result:= OrderedCollection new.
	"someTags collect: [
		:each | self getTagFromNameOrNil: each name
	] thenDo: [
		:each |
		(each) ifNil: [ self createTopicWithName: each name description: each description ].
		result add: (self getTagFromNameOrNil: each).
	]."
	someTags do: [
		:each |
		auxTag:= self getTagFromNameOrNil: each name.
		(auxTag)
		ifNil: [self createTopicWithName: each name description: each description].
		result add: (self getTagFromNameOrNil: each name).
	].
	^result.