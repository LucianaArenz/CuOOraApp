rendering
renderQuestionVotesOn: aCanvas withDetails: oneQuestion andUser: user
	aCanvas
		paragraph: [ aCanvas text: oneQuestion likes.
			aCanvas text: ' Likes '.
			aCanvas text: oneQuestion dislikes.
			aCanvas text: ' Dislikes' ].
			aCanvas
				paragraph: [
					aCanvas anchor
						callback: [ oneQuestion upvote: user ];
						with: 'Like'.
					aCanvas space.
					aCanvas anchor
						callback: [ oneQuestion downvote: user ];
						with: 'Dislike'.
				].