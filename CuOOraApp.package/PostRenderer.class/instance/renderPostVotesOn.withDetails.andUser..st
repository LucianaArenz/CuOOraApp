rendering
renderPostVotesOn: aCanvas withDetails: aPost andUser: user
	aCanvas
		paragraph: [ aCanvas text: aPost likes.
			aCanvas text: ' Likes '.
			aCanvas text: aPost dislikes.
			aCanvas text: ' Dislikes' ].
			aCanvas
				paragraph: [ aCanvas anchor
					callback: [ aPost upvote: user ];
					with: 'Like'.
					aCanvas space.
					aCanvas anchor
						callback: [ aPost downvote: user ];
						with: 'Dislike' ].