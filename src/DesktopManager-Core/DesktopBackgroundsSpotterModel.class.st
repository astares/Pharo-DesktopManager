"
A spotter model for background pictures
"
Class {
	#name : #DesktopBackgroundsSpotterModel,
	#superclass : #Object,
	#category : #'DesktopManager-Core-Spotter'
}

{ #category : #'instance creation' }
DesktopBackgroundsSpotterModel class >> open [
	<script>
	
	^GTSpotterMorph new
		extent: 500@500;
		doLayout;
		spotterModel: (GTSpotter on: self new);
		showPreview;
		openCenteredInWorld
]

{ #category : #printing }
DesktopBackgroundsSpotterModel >> printOn: aStream [
	"Print the receiver on a stream"
	
	aStream nextPutAll: 'Desktop backgrounds'
]

{ #category : #spotting }
DesktopBackgroundsSpotterModel >> spotterDesktopsFor: aStep [
	<spotterOrder: 10>
	
	^ aStep listProcessor 
		title: 'Desktop Backgrounds' translated;
		candidatesLimit: Float infinity;
		allCandidates: [ DesktopBackground bingCollection ];
		itemName: [:item | item name ];
		"itemIcon: [:item | item icon ];"
	   actLogic: [:each | each useAsDesktopBackground. aStep exit ];
		matchSubstring
]
