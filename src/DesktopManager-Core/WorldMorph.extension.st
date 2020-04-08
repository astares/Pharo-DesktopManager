Extension { #name : #WorldMorph }

{ #category : #'*DesktopManager-Core' }
WorldMorph >> desktops [
	^DesktopManager soleInstance desktops
]

{ #category : #'*DesktopManager-Core' }
WorldMorph >> installForDesktopManager [
	
	owner := nil.	"since we may have been inside another world previously"
	ActiveWorld := self.
	World := self.
	
	self hands ifEmpty: [self addHand: HandMorph new].

	self worldState worldRenderer: AbstractWorldRenderer mainWorldRenderer.
	AbstractWorldRenderer mainWorldRenderer world: self.  
	
	submorphs do: [ :ss | ss owner ifNil: [ ss privateOwner: self ] ].	
		
	worldState handsDo: [ :h | h initForEvents ].
	self borderWidth: 0.	
	SystemWindow noteTopWindowIn: self.
	self color: self class defaultWorldColor.
]
