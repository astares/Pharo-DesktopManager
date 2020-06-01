Class {
	#name : #DesktopBackgroundSpotterProcessor,
	#superclass : #SptCollectionBasedProcessor,
	#category : #'DesktopManager-Core-Spotter-Backgrounds'
}

{ #category : #'default-settings' }
DesktopBackgroundSpotterProcessor class >> defaultEnabled [

	^ true
]

{ #category : #accessing }
DesktopBackgroundSpotterProcessor class >> order [
	
	^ 11
]

{ #category : #accessing }
DesktopBackgroundSpotterProcessor class >> title [
	
	^ 'Desktop Backgrounds'
]

{ #category : #filtering }
DesktopBackgroundSpotterProcessor >> collection [

	^ DesktopBackground bingCollection
]

{ #category : #filtering }
DesktopBackgroundSpotterProcessor >> newEntryOn: anElement [

	^ DesktopBackgroundSpotterEntry on: anElement
]
