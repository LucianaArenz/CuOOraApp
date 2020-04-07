accessing
show: aCanvas question: oneQuestion with: user andAnswers: cantAnswers
	aCanvas
		div: [ aCanvas heading
				level: 4;
				with: oneQuestion title.
			aCanvas
				paragraph: [ aCanvas heading
						level: 5;
						with: 'Realizada por: ' , user username , ' | '.
					aCanvas anchor
						callback: [ self renderAnswersOn: aCanvas question: oneQuestion ];
						with: [ aCanvas text: cantAnswers.
							aCanvas button: 'Answers' ] ].
			aCanvas
				paragraph: [ aCanvas text: oneQuestion likes.
					aCanvas button
						callback: [ oneQuestion upvote: user ];
						with: 'Liked'.
					aCanvas text: oneQuestion dislikes.
					aCanvas button
						callback: [ oneQuestion downvote: user ];
						with: 'disliked' ] ]