keymaps
keymapSpotterDesktop
	<shortcut>
	^ KMKeymap
			shortcut: $d control ,$d control
			action: [										
				World activeHand keyboardFocus  "hack to still allow CTRL + D do its when in an editor"
					ifNil: [ DesktopSpotterModel open ]
					ifNotNil: [:focus | focus editor doIt: nil ]]