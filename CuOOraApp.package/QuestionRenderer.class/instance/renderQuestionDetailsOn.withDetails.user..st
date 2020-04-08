accessing
renderQuestionDetailsOn: aCanvas withDetails: oneQuestion user: user
	aCanvas
		div: [ 
			aCanvas heading
				level: 4;
				with: oneQuestion title.
			"self renderTopicsOn: aCanvas withDetails: oneQuestion getAllTopics."
			aCanvas
				paragraph: [
					self renderUserDetailsOn: aCanvas withDetails: user.
					aCanvas text: ' | '.
					aCanvas anchor
						callback: [ self navigateToAnswersForQuestion: oneQuestion ];
						with: [
							aCanvas text: oneQuestion answers size.
							aCanvas text: ' Respuestas'
						]
					].
					self renderQuestionVotesOn: aCanvas withDetails: oneQuestion andUser: user
			].