accessing
icon
	^ self isActive
		ifTrue: [ self iconNamed: #activeDesktopIcon ]
		ifFalse: [ #desktopIcon asIcon ]