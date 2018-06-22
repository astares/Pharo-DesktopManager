spotting
spotterDesktopsFor: aStep
	<spotterOrder: 10>
	
	^ aStep listProcessor 
		title: 'Desktop Backgrounds' translated;
		candidatesLimit: Float infinity;
		allCandidates: [ DesktopBackground bingCollection ];
		itemName: [:item | item name ];
		"itemIcon: [:item | item icon ];"
	   actLogic: [:each | each useAsDesktopBackground. aStep exit ];
		matchSubstring