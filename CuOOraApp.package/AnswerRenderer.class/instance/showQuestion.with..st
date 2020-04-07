accesing
showQuestion: aCanvas with: oneQuestion
	| user |
	user := oneQuestion author.
	aCanvas
		div: [ aCanvas heading
				level: 4;
				with: oneQuestion title.
			aCanvas
				paragraph: [ aCanvas text: 'Realizada por: '.
					aCanvas space.
					aCanvas text: user username.
					aCanvas space.
					aCanvas
						paragraph: [ aCanvas text: oneQuestion likes.
							aCanvas space.
							aCanvas text: 'Likes'.
							aCanvas space.
							aCanvas text: oneQuestion dislikes.
							aCanvas space.
							aCanvas text: 'Dislikes' ].
					aCanvas
						paragraph: [ aCanvas button
								callback: [ oneQuestion upvote: user ];
								with: 'Liked'.
							aCanvas space.
							aCanvas button
								callback: [ oneQuestion downvote: user ];
								with: 'disliked' ] ] ]