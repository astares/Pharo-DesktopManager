utilities
urlsFromBING: number

	| json |
	json := (ZnEasy get: ('http://www.bing.com/HPImageArchive.aspx?format=js&idx=0&n=',number asString,'&mkt=en-US')) contents.
	^((STON fromString: json)
		at: 'images')
		collect: [:each | (each at: 'copyright') -> ('http://www.bing.com',(each at: 'url'))]