"
A spotter model for the desktops
"
Class {
	#name : #DesktopSpotterModel,
	#superclass : #Object,
	#category : #'DesktopManager-Core-Spotter'
}

{ #category : #'instance creation' }
DesktopSpotterModel class >> open [
	<script>
	
	^GTSpotterMorph new
		extent: 500@500;
		doLayout;
		spotterModel: (GTSpotter on: self new);
		showPreview;
		openCenteredInWorld
]

{ #category : #printing }
DesktopSpotterModel >> printOn: aStream [
	"Print the receiver on a stream"
	
	aStream nextPutAll: 'Desktops'
]

{ #category : #spotting }
DesktopSpotterModel >> spotterDesktopsFor: aStep [
	<spotterOrder: 10>
	
	^ aStep listProcessor 
		title: ['Desktops'];
		candidatesLimit: Float infinity;
		allCandidates: [ Desktop manager desktops ];
		itemName: [:item | item name ];
		itemIcon: [:item | item icon ];
	   actLogic: [:each | each useAsDesktop. aStep exit ];
		matchSubstring
]
