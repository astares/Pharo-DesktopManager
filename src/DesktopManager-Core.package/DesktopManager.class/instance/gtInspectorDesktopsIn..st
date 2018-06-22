inspector
gtInspectorDesktopsIn: composite
	<gtInspectorPresentationOrder: 0>  
	
	^ (composite list)
		title: ['Desktops'];
		display: [ self desktops ]; 
		icon: [:each | each icon ];
		format: [:each | each name ];
		act: [:each | each selection ifNotNil: [:desktop | desktop useAsDesktop ] ] icon: #smallDoItIcon asIcon entitled: 'Switch to Desktop';
		selectionAct: [:each | each selection ifNotNil: [:desktop | self class renameDesktop: desktop ]. each update ] entitled: 'Rename desktop' 