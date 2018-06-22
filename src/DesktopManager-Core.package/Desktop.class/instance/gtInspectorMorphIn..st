inspector
gtInspectorMorphIn: composite
	<gtInspectorPresentationOrder: 1>
	composite morph
		title: [ self name ];
		display: [ self world imageForm asMorph ];
		act: [ :each | self useAsDesktop ]
			icon:
			(self iconNamed: #smallDoItIcon)
			entitled: 'Switch to Desktop'