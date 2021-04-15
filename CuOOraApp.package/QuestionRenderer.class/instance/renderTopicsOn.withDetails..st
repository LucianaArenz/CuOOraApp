rendering
renderTopicsOn: aCanvas withDetails: details
	aCanvas div: [ 
		aCanvas span: [
			aCanvas text: 'Topicos: '.
			details do:
					[ :each | aCanvas text: each , ' ']
		].
	].
	
	