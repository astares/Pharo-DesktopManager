*DesktopManager-Core
desktopIcon
	^ icons
			at: #'desktopIcon'
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self desktopIconContents readStream) ].