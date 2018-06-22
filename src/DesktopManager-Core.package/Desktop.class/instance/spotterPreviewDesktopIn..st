spotting
spotterPreviewDesktopIn: aComposite
	<spotterPreview: 15>
	|form newWidth newHeight|
	newWidth := 300.
	form := self world imageForm.
	newHeight := newWidth / form width * form height. 
	aComposite custom: 
		((self world imageForm scaledToSize: newWidth @ newHeight) asAlphaImageMorph asBrick margin: 20)