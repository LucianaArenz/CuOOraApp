rendering
renderFollowInformationOn: aCanvas
	|following|
	following:= self session user following includes: user.
	(following)
		ifFalse: [
			aCanvas anchor
			  callback: [ self followUser ];
			  with: 'Follow'.
			]
		ifTrue: [
			aCanvas anchor
			  callback: [ self unfollowUser ];
			  with: 'Unfollow'.
			].