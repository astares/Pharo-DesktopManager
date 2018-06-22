"
A desktop
"
Class {
	#name : #Desktop,
	#superclass : #Object,
	#instVars : [
		'world',
		'name'
	],
	#category : #'DesktopManager-Core-Base'
}

{ #category : #'instance creation' }
Desktop class >> current [

	^self manager activeDesktop
]

{ #category : #accessing }
Desktop class >> manager [

	^DesktopManager soleInstance 
]

{ #category : #'instance creation' }
Desktop class >> world: aWorld [  

	^(self new)
		world: aWorld; 
		yourself
]

{ #category : #inspector }
Desktop >> gtInspectorMorphIn: composite [
	<gtInspectorPresentationOrder: 1>
	composite morph
		title: [ self name ];
		display: [ self world imageForm asMorph ];
		act: [ :each | self useAsDesktop ]
			icon:
			(self iconNamed: #smallDoItIcon)
			entitled: 'Switch to Desktop'
]

{ #category : #accessing }
Desktop >> icon [
	^ self isActive
		ifTrue: [ Smalltalk ui icons activeDesktopIcon ]
		ifFalse: [ #desktopIcon asIcon ]
]

{ #category : #testing }
Desktop >> isActive [

	^self manager isActive: self
]

{ #category : #'private accessing' }
Desktop >> manager [

	^DesktopManager soleInstance
]

{ #category : #accessing }
Desktop >> name [

	name ifNil: [ ^DesktopManager soleInstance nameForDesktop: self ].
	^self isActive 
		ifTrue: [ name, ' (active)' ]
		ifFalse: [ name ]
]

{ #category : #accessing }
Desktop >> name: aString [

	name := aString
]

{ #category : #spotting }
Desktop >> spotterPreviewDesktopIn: aComposite [
	<spotterPreview: 15>
	|form newWidth newHeight|
	newWidth := 300.
	form := self world imageForm.
	newHeight := newWidth / form width * form height. 
	aComposite custom: 
		((self world imageForm scaledToSize: newWidth @ newHeight) asAlphaImageMorph asBrick margin: 20)
]

{ #category : #operations }
Desktop >> useAsDesktop [

	self manager switchToDesktop: self
]

{ #category : #accessing }
Desktop >> world [

	^world
]

{ #category : #accessing }
Desktop >> world: aWorld [

	world := aWorld
]
