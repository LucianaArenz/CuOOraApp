rendering
renderTopics: aCanvas
	aCanvas
		paragraph: [ aCanvas
				unorderedList: [ appInstance topics
						do: [ :tag | aCanvas text: tag name] ] ]  