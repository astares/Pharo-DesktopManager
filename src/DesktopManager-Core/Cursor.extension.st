Extension { #name : #Cursor }

{ #category : #'*DesktopManager-Core' }
Cursor >> show [
	"Make the hardware's mouse cursor look like the receiver"
	self currentWorld activeHand ifNotNil: [:aHand | aHand currentCursor: self ]
]
