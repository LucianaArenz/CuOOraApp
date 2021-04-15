as yet unclassified
getTagFromNameOrNil: aTagName	
	"Gets a tag. Returns nil if not found"
	|result|
	result:= topics detect:[
		:each | each name = aTagName
	] ifNone: [
		result:= nil.
	].
	^result.
	