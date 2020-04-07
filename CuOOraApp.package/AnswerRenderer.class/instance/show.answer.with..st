accesing
show: aCanvas answer: oneAns with: user 
	aCanvas
		div: [ aCanvas heading
				level: 4;
				with: 'Respuesta de ', user username.
			aCanvas
				paragraph: [ aCanvas text: oneAns description.].
			aCanvas
				paragraph: [ aCanvas text: oneAns likes.
					aCanvas space.
					aCanvas text: 'Likes'.
					aCanvas space.
					aCanvas text: oneAns dislikes.
					aCanvas space.
					aCanvas text: 'Dislikes' ].
			aCanvas
				paragraph: [ aCanvas button
						callback: [ oneAns upvote: user ];
						with: 'Liked'.
					aCanvas space.
					aCanvas button
						callback: [ oneAns downvote: user ];
						with: 'disliked' ] ]
