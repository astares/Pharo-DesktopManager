*DesktopManager-Core
activeDesktopIcon
	^ icons
			at: #'activeDesktopIcon'
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self activeDesktopIconContents readStream) ].