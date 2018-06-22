operations
switchToNextDesktop
	|desk|
	desk := (currentDesktopIndex = self desktops size)
				ifTrue: [ self desktops first ]
				ifFalse: [ self desktops at: currentDesktopIndex + 1 ].
	self switchToDesktop: desk