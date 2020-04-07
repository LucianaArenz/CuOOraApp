accessing
show: aCanvas question: oneQuestion with: user andAnswers: cantAnswers
	aCanvas
		div: [ aCanvas heading
				level: 4;
				with: oneQuestion title.
			aCanvas
				paragraph: [ aCanvas text: 'Realizada por: '.
					aCanvas space.
					aCanvas text: user username.
					aCanvas space.
					aCanvas text: '| '.
					aCanvas text: cantAnswers.
					aCanvas space.
					aCanvas anchor
						callback: [ self renderAnswersOn: aCanvas question: oneQuestion ];
						with: [
							aCanvas button: 'Answers' ] ].
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
						with: 'disliked' ] ]