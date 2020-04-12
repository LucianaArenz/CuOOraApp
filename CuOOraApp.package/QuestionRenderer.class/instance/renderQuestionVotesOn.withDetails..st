rendering
renderQuestionVotesOn: aCanvas withDetails: oneQuestion
	aCanvas
		paragraph: [
			aCanvas text: oneQuestion likes.
			aCanvas text: ' Likes '.
			aCanvas text: oneQuestion dislikes.
			aCanvas text: ' Dislikes' ].
			aCanvas
				paragraph: [
					aCanvas anchor
						callback: [ oneQuestion upvote: self session user ];
						with: 'Like'.
					aCanvas space.
					aCanvas anchor
						callback: [ oneQuestion downvote: self session user ];
						with: 'Dislike'.
				].