"
A manager to handle multiple worlds/desktops
"
Class {
	#name : #DesktopManager,
	#superclass : #Object,
	#instVars : [
		'desktops',
		'currentDesktopIndex'
	],
	#classInstVars : [
		'soleInstance'
	],
	#category : #'DesktopManager-Core-Base'
}

{ #category : #'window menu' }
DesktopManager class >> desktopManagerMenuCommandOn: aBuilder [
	<worldMenu>
	(aBuilder item: #'Manage Desktops')
		parent: #Desktops;
		help: 'Windows Tools';
		order: 0;
		icon: Smalltalk ui icons newDesktopIcon.
	aBuilder withSeparatorAfter
]

{ #category : #'window menu' }
DesktopManager class >> desktopMenuCommandOn: aBuilder [ 
	<worldMenu> 

	(aBuilder item: #'Add new desktop')	 
		help: 'Add a new desktop';
		parent: #'Manage Desktops';
		order: 0;
		keyText: 'd, a';
		action: [ self soleInstance addNewDesktop ]. 

	(aBuilder item: #'Rename desktop')	 
		help: 'Rename active desktop';
		parent: #'Manage Desktops';
		order: 0;
		keyText: 'd, r';
		action: [ self soleInstance renameActiveDesktop ]. 

	 aBuilder withSeparatorAfter.

	(aBuilder item: #'Previous desktop')	
		enabled: self soleInstance desktops size > 1;
		help: 'Switch to previous desktop';
		parent: #'Manage Desktops';
		order: 1;
		keyText: 'd, p';
		action: [ self soleInstance switchToNextDesktop ].
		
	(aBuilder item: #'Next desktop')	 
		enabled: self soleInstance desktops size > 1;
		help: 'Switch to next desktop';
		parent: #'Manage Desktops';
		order: 2;
		keyText: 'd, n';
		action: [ self soleInstance switchToNextDesktop ].
		
	 aBuilder withSeparatorAfter.
	
	(aBuilder item: #'Toogle fullscreen')	 
		help: 'Toogle fullscreen mode';
		parent: #'Manage Desktops';
		order: 3;
		keyText: 'd, f';
		action: [ Display toggleFullscreen ].
		
	 aBuilder withSeparatorAfter.	
		
	(aBuilder item: #'Delete non-active desktops')
		enabled: self soleInstance desktops size > 1;
		help: 'Delete all but active desktop';
		parent: #'Manage Desktops';
		order: 4;
		action: [ self reset. ].
	
	
	(aBuilder item: #'Desktops Overview')	 
		help: 'Open desktop manager';
		parent: #'Manage Desktops';
		keyText: 'd, o';
		order: 5;
		action: [ self soleInstance inspect ].	
	
]

{ #category : #'window menu' }
DesktopManager class >> desktopsDynamicMenuCommandOn: aBuilder [ 
	<worldMenu> 
 
	self soleInstance desktops doWithIndex: [:each :index | 
		(aBuilder item: each name asSymbol)
			parent: #'Desktops';
			help: 'Windows Tools';
			order: index;
			action: [ self soleInstance switchToDesktop: each ];
			icon: each icon ]
	
]

{ #category : #'window menu' }
DesktopManager class >> menuCommandOn: aBuilder [ 
	<worldMenu> 
	
	(aBuilder item: #'Desktops')	 
		help: 'Windows Tools';
		order: 4.1.
	 aBuilder withSeparatorAfter 
]

{ #category : #'instance creation' }
DesktopManager class >> new [

	self error: 'Do not create new instances - access using #soleInstance'
]

{ #category : #private }
DesktopManager class >> renameDesktop: aDesktop [

	|newName|	
	newName := UIManager default request: 'Desktop name' initialAnswer: aDesktop name.
	newName ifNotNil: [ aDesktop name: newName ]
]

{ #category : #private }
DesktopManager class >> reset [
	"Handle with care as this not yet frees the desktops"
	<script>
	
	soleInstance := nil.
	 
]

{ #category : #accessing }
DesktopManager class >> soleInstance [
	<script: 'self soleInstance inspect'>
	
	^ soleInstance ifNil: [ soleInstance := self basicNew initialize ]
]

{ #category : #accessing }
DesktopManager >> activeDesktop [

	^self desktops at: currentDesktopIndex
]

{ #category : #private }
DesktopManager >> addDesktop: aDesktop [

	desktops add: aDesktop
]

{ #category : #operations }
DesktopManager >> addNewDesktop [
	|desk|
	desk := self createNewDesktop.
	
	self addDesktop: desk.
	self switchToDesktop: desk.
	
]

{ #category : #private }
DesktopManager >> createNewDesktop [
 
	^Desktop world: (WorldMorph new installForDesktopManager)  
]

{ #category : #accessing }
DesktopManager >> desktops [

	^desktops
]

{ #category : #inspector }
DesktopManager >> gtInspectorDesktopsIn: composite [
	<gtInspectorPresentationOrder: 0>
	^ composite list
		title: [ 'Desktops' ];
		display: [ self desktops ];
		icon: [ :each | each icon ];
		format: [ :each | each name ];
		act: [ :each | each selection ifNotNil: [ :desktop | desktop useAsDesktop ] ]
			icon:
			(self iconNamed: #smallDoItIcon)
			entitled: 'Switch to Desktop';
		selectionAct: [ :each | 
			each selection
				ifNotNil: [ :desktop | self class renameDesktop: desktop ].
			each update ]
			entitled: 'Rename desktop'
]

{ #category : #initialization }
DesktopManager >> initialize [
	super initialize.
	desktops := OrderedCollection with: (Desktop world: World).
	currentDesktopIndex := 1
]

{ #category : #accessing }
DesktopManager >> isActive: aDesktop [
	^currentDesktopIndex = (self desktops indexOf: aDesktop) 
]

{ #category : #accessing }
DesktopManager >> nameForDesktop: aDesktop [
	|index desktopName|
	index := self desktops indexOf: aDesktop.
	desktopName := 'Desktop ', index asString.
	index = currentDesktopIndex ifTrue: [ desktopName := desktopName , ' (active)' ].
	^desktopName 
]

{ #category : #operations }
DesktopManager >> renameActiveDesktop [

	self class renameDesktop: self activeDesktop 
]

{ #category : #private }
DesktopManager >> switchToDesktop: aDesktop [	
	
	currentDesktopIndex := desktops indexOf: aDesktop.
	aDesktop world install.
	Display restore.
	UIManager default inform: aDesktop name
]

{ #category : #operations }
DesktopManager >> switchToNextDesktop [
	|desk|
	desk := (currentDesktopIndex = self desktops size)
				ifTrue: [ self desktops first ]
				ifFalse: [ self desktops at: currentDesktopIndex + 1 ].
	self switchToDesktop: desk
]

{ #category : #operations }
DesktopManager >> switchToPreviousDesktop [
	|desk|
	desk := (currentDesktopIndex = 1)
				ifTrue: [ self desktops last ]
				ifFalse: [ self desktops at: currentDesktopIndex - 1 ].
	self switchToDesktop: desk
]
