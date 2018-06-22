operations
switchToPreviousDesktop
	|desk|
	desk := (currentDesktopIndex = 1)
				ifTrue: [ self desktops last ]
				ifFalse: [ self desktops at: currentDesktopIndex - 1 ].
	self switchToDesktop: desk