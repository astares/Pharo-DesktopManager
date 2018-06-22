*DesktopManager-Core
activeDesktopIcon
	^ icons
			at: #'activeDesktopIcon'
			ifAbsentPut: [ Form fromBinaryStream: self activeDesktopIconContents base64Decoded readStream ].