Extension { #name : #WorldMorph }

{ #category : #'*DesktopManager-Core' }
WorldMorph >> desktops [
	^DesktopManager soleInstance desktops
]

{ #category : #'*DesktopManager-Core' }
WorldMorph >> installForDesktopManager [
	
	owner := nil.
	
	Sensor
		flushNonKbdEvents;
		flushKeyboard;
		flushEvents;
		shutDown.
	self class shutDown.
 
	self addHand: HandMorph new.	
	self borderWidth: 0.
	self viewBox: Display boundingBox.
	self borderWidth: 0.	"default"
	self color: self class defaultWorldColor.

	World := self.
	ActiveWorld := self.
	ActiveHand := self hands first.	"default"
	ActiveEvent := nil.
	worldState handsDo: [ :h | h releaseCachedState ].
	Sensor startUp.
	self class startUp.
	self showWorldTaskbar: true.
	self displayWorldSafely.
]
