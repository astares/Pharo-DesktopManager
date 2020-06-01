"
A spotter processor for the desktops
"
Class {
	#name : #DesktopSpotterProcessor,
	#superclass : #SptCollectionBasedProcessor,
	#category : #'DesktopManager-Core-Spotter-Desktops'
}

{ #category : #'default-settings' }
DesktopSpotterProcessor class >> defaultEnabled [

	^ true
]

{ #category : #accessing }
DesktopSpotterProcessor class >> order [
	
	^ 10
]

{ #category : #accessing }
DesktopSpotterProcessor class >> title [
	
	^ 'Desktops'
]

{ #category : #filtering }
DesktopSpotterProcessor >> collection [

	^Desktop manager desktops
]

{ #category : #filtering }
DesktopSpotterProcessor >> newEntryOn: anElement [

	^ DesktopSpotterEntry on: anElement 
]
