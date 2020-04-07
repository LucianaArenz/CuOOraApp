accesing
oneAnswer: aCanvas and: oneAns
	| user |
	user := oneAns author.
	^ aCanvas
		div: [ self
				show: aCanvas
				answer: oneAns
				with: user ]