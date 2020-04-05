accessing
getUser: aUsername
	"Gets a user. Returns nil if not found"
	|result|
	result:= nil.
	result:= users detect:[
		:each | each username = aUsername
	].
	^result.