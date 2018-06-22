accessing
icon
	^self isActive 
		ifTrue: [ #activeDesktopIcon asIcon ]
		ifFalse: [ #desktopIcon asIcon ]