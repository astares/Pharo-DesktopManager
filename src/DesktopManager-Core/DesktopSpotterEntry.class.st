"
A spotter entry for the desktops
"
Class {
	#name : #DesktopSpotterEntry,
	#superclass : #SptEntry,
	#category : #'DesktopManager-Core-Spotter-Desktops'
}

{ #category : #converting }
DesktopSpotterEntry >> asString [ 

	^ self content name asString
]

{ #category : #evaluating }
DesktopSpotterEntry >> doEvaluate [ 

	content useAsDesktop
]

{ #category : #accessing }
DesktopSpotterEntry >> icon [
	
	^content icon
]

{ #category : #evaluating }
DesktopSpotterEntry >> spotterPreviewIn: aComposite [

	|form newWidth newHeight|
	newWidth := 400.
	form := self content world imageForm.
	newHeight := newWidth / form width * form height. 
	aComposite custom: 
		((form scaledToSize: newWidth @ newHeight) asAlphaImageMorph asBrick margin: 20)
]
