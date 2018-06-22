accessing
nameForDesktop: aDesktop
	|index desktopName|
	index := self desktops indexOf: aDesktop.
	desktopName := 'Desktop ', index asString.
	index = currentDesktopIndex ifTrue: [ desktopName := desktopName , ' (active)' ].
	^desktopName 