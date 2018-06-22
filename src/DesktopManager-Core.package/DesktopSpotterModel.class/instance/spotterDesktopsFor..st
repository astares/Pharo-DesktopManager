spotting
spotterDesktopsFor: aStep
	<spotterOrder: 10>
	
	^ aStep listProcessor 
		title: ['Desktops'];
		candidatesLimit: Float infinity;
		allCandidates: [ Desktop manager desktops ];
		itemName: [:item | item name ];
		itemIcon: [:item | item icon ];
	   actLogic: [:each | each useAsDesktop. aStep exit ];
		matchSubstring