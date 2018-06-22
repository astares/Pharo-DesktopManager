*DesktopManager-Core
desktopIcon
	^ icons
			at: #'desktopIcon'
			ifAbsentPut: [ Form fromBinaryStream: self desktopIconContents base64Decoded readStream ].