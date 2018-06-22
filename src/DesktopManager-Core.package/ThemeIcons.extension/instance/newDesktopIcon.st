*DesktopManager-Core
newDesktopIcon
	^ icons
			at: #'newDesktopIcon'
			ifAbsentPut: [ Form fromBinaryStream: self newDesktopIconContents base64Decoded readStream ].