rendering
renderContentOn: aCanvas
	"render on a canvas"
	aCanvas div with: self.Title.
	aCanvas div with: self.Description.
	aCanvas div with: self.Author.
	aCanvas div with: self.Answers.