initialization
initialize
	super initialize.
	desktops := OrderedCollection with: (Desktop world: World).
	currentDesktopIndex := 1