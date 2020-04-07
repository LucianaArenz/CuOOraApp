accessing
show: aCanvas question: oneQuestion with: user andAnswers: cantAnswers
	aCanvas
		div: [
			aCanvas heading
				level: 4;
				with: oneQuestion title.
			aCanvas
				paragraph: [
					aCanvas text: 'Realizada por: '.
					aCanvas text: user username.
					aCanvas text: ' | '.
					aCanvas anchor
						callback: [ self renderAnswersOn: aCanvas with: oneQuestion ];
						with: [
							aCanvas text: cantAnswers.
							aCanvas text: ' Respuestas'
						]
				].
			aCanvas
				paragraph: [
					aCanvas text: oneQuestion likes.
					aCanvas text: ' Likes '.
					aCanvas text: oneQuestion dislikes.
					aCanvas text: ' Dislikes'
				].
			aCanvas
				paragraph: [
					aCanvas button
						callback: [ oneQuestion upvote: user ];
						with: 'Like'.
					aCanvas space.
					aCanvas button
						callback: [ oneQuestion downvote: user ];
						with: 'Dislike'
				]
			].