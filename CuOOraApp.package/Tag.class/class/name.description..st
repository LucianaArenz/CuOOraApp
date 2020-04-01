initialization
name: aName description: aDescription
	|tmpTag|
	tmpTag:= self new .
	tmpTag initializeWithName: aName description: aDescription.
	^tmpTag.