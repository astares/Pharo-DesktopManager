"
A keymap category for the desktop shortcuts
"
Class {
	#name : #DesktopKeymapCategory,
	#superclass : #KMCategory,
	#category : #'DesktopManager-Core-Shortcuts'
}

{ #category : #'class initialization' }
DesktopKeymapCategory class >> initialize [

	KMRepository default setAsGlobalCategory: self new
]

{ #category : #testing }
DesktopKeymapCategory class >> isGlobalCategory [
	^true
]

{ #category : #keymaps }
DesktopKeymapCategory >> keymapAddDesktop [
	<shortcut>
	^ KMKeymap
			shortcut: $d control ,$a control
			action: [
				Desktop manager addNewDesktop ]
]

{ #category : #keymaps }
DesktopKeymapCategory >> keymapDesktopLogo [
	<shortcut>
	^ KMKeymap
			shortcut: $d control ,$l control
			action: [
				PolymorphSystemSettings showDesktopLogo: PolymorphSystemSettings showDesktopLogo not ]
]

{ #category : #keymaps }
DesktopKeymapCategory >> keymapDesktopMenuBar [
	<shortcut>
	^ KMKeymap
			shortcut: $d control ,$m control
			action: [
				MenubarMorph showMenubar: MenubarMorph showMenubar not ]
]

{ #category : #keymaps }
DesktopKeymapCategory >> keymapManagerDesktop [
	<shortcut>
	^ KMKeymap
			shortcut: $d control ,$o control 
			action: [
				Desktop manager inspect ]
]

{ #category : #keymaps }
DesktopKeymapCategory >> keymapNextDesktop [
	<shortcut>
	^ KMKeymap
			shortcut: $d control ,$n control
			action: [
				Desktop manager switchToNextDesktop ]
]

{ #category : #keymaps }
DesktopKeymapCategory >> keymapPreviousDesktop [
	<shortcut>
	^ KMKeymap
			shortcut: $d control  ,$p control
			action: [
				Desktop manager switchToPreviousDesktop ]
]

{ #category : #keymaps }
DesktopKeymapCategory >> keymapRenameActiveDesktop [
	<shortcut>
	^ KMKeymap
			shortcut: $d control ,$r control
			action: [
				Desktop manager renameActiveDesktop ]
]

{ #category : #keymaps }
DesktopKeymapCategory >> keymapSpotterDesktop [
	<shortcut>
	^ KMKeymap
			shortcut: $d control ,$d control
			action: [										
				World activeHand keyboardFocus  "hack to still allow CTRL + D do its when in an editor"
					ifNil: [ DesktopSpotterModel open ]
					ifNotNil: [:focus | focus editor doIt: nil ]]
]

{ #category : #keymaps }
DesktopKeymapCategory >> keymapSpotterDesktopBackground [
	<shortcut>
	^ KMKeymap
			shortcut: $d control ,$b control
			action: [										
					  DesktopBackgroundsSpotterModel open ]
]

{ #category : #keymaps }
DesktopKeymapCategory >> keymapToogleFullScreenDesktop [
	<shortcut>
	^ KMKeymap
			shortcut: $d control ,$f control
			action: [
				Display toggleFullscreen ]
]
