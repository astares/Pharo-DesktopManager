accessing
name

	name ifNil: [ ^DesktopManager soleInstance nameForDesktop: self ].
	^self isActive 
		ifTrue: [ name, ' (active)' ]
		ifFalse: [ name ]