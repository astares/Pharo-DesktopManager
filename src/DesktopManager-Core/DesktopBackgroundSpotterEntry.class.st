Class {
	#name : #DesktopBackgroundSpotterEntry,
	#superclass : #SptEntry,
	#category : #'DesktopManager-Core-Spotter-Backgrounds'
}

{ #category : #converting }
DesktopBackgroundSpotterEntry >> asString [ 

	^ content name asString
]

{ #category : #evaluating }
DesktopBackgroundSpotterEntry >> doEvaluate [ 

	content useAsDesktopBackground
]

{ #category : #accessing }
DesktopBackgroundSpotterEntry >> icon [
	
	^ nil
]
