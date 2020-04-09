rendering
renderTopics: aCanvas
	| ok |
	aCanvas label: ' Topics '.
	aCanvas
		paragraph: [ aCanvas
				unorderedList: [ appInstance topics
						do: [ :tag | 
							ok := 0.
							aCanvas paragraph  
								with: [ aCanvas checkbox
										with: tag name;
										onChange: aCanvas jQuery ajax serializeThisWithHidden;
										onClick: (aCanvas jQuery ajax callback: [ :selection | ok := 1 ]);
										callback: [ :selection |  ] ].
							ok = 1
								ifTrue: [ self topics add: tag ] ] ] ] 