spotting
spotterPreviewDesktopIn: aComposite
	<spotterPreview: 15>
	|newWidth newHeight|
	newWidth := 300.	
	newHeight := newWidth / form width * form height. 
	aComposite custom: 
		((form scaledToSize: newWidth @ newHeight) asAlphaImageMorph asBrick margin: 20)