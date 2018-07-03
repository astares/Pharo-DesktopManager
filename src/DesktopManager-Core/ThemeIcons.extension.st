Extension { #name : #ThemeIcons }

{ #category : #'*DesktopManager-Core' }
ThemeIcons >> activeDesktopIcon [
	^ icons
			at: #'activeDesktopIcon'
			ifAbsentPut: [ Form fromBinaryStream: self activeDesktopIconContents base64Decoded readStream ].
]

{ #category : #'*DesktopManager-Core' }
ThemeIcons >> activeDesktopIconContents [

	^'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAABl0lEQVR4XpWSzUsCQRjG/Wc6
7O6lYzdv3bpJlgoSSJmFQkbRpQ5CGhQZBoZKSxcJKiL6pIOSdOvQrU5hRh6UtFDSdVd42plm
1TEyG/jxvPPuPA/zsabOkXCPwjI0CKKm/wzvyAAIxAzIVI1e3wFp2QxknS3IvK8AY9vEFNvw
05oomRvHiV69wBN7gOC75bCtHMNEzWkzhdbaB7p7h2cZhCL7sLgCHII3g/YO9MXcDpiZfH+q
NHFf0jisU6sQZlPg7iDbgXEHDbWJmqKh1iDKal3tM2sQPdf48QrE3PkK1ZrKUalpqH5qcPrW
IbjPYfrtP6jWmyhXVZR0yl2UKipc82GIkyd8QPT0ERepO3rmwnujJ9NL2xBdB3yAZ+sGseQl
vaT8m4JXRp7RqksKvMs7kCaSfIDo3MNcIE4Dnot15AoKckSLynddMHoK/IEEJH09FyA54lgI
ypTF4C5TnZDM+nqvVcuQHAk+YNh/BMkepYhMjVq0sbmt3SPre/7mNHAsApEwHvnb0DaFIVk3
20rRn80apkowwr4AvyAIa9os7IAAAAAASUVORK5CYII='
]

{ #category : #'*DesktopManager-Core' }
ThemeIcons >> desktopIcon [
	^ icons
			at: #'desktopIcon'
			ifAbsentPut: [ Form fromBinaryStream: self desktopIconContents base64Decoded readStream ].
]

{ #category : #'*DesktopManager-Core' }
ThemeIcons >> desktopIconContents [

	^'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAABb0lEQVR4Xr2SQUsCQRiG+zvu
/oNuEXToEB1CbTU0ki2zFLKSOiQhpFGQZJFgKF0kqKgOXTx0iO79hYQ8KG2B0jq6wtvMOGrj
IT1EAw/vt8M7D7PsjvzZ0qK3sIWeh4b1JYEt+IQZX2xoWF8WrDzCsbiHF8MaCOuxviwIFKAF
ErxgNijEQp2002y0aLbaM01XYB/KckEWKEsP8IQOuUCn7ze3kce0nsa48wCjU7uomU1UTQu1
L4v3bLQv30C/g289yQUftSbHEPkTo9rkPUW/77vBwjX826fdGzC8kUvYV7OY9B5jzJ7gNyl/
NuDfOoHiu+oTzOcRjKa5oPRO8CYoCbqzQRDcSUOlfVngucBaLMMFr5U6imWCIssKac/lzh5B
OHYOlfYlgerOYDOe40TiWZGURE7s073unIPqPpcFE+EbqK4zjiKyMyuaeNZ6e6z/66/Nhc4U
FMZsavCB3qEkVMdRLzn0szmSPBlDyf5tfQN9t7oFHiNJNQAAAABJRU5ErkJggg=='
]

{ #category : #'*DesktopManager-Core' }
ThemeIcons >> newDesktopIcon [
	^ icons
			at: #'newDesktopIcon'
			ifAbsentPut: [ Form fromBinaryStream: self newDesktopIconContents base64Decoded readStream ].
]

{ #category : #'*DesktopManager-Core' }
ThemeIcons >> newDesktopIconContents [

	^'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAABkklEQVR42mNkoBAwwhhR9ev/
n/8gSrRGQ4HXDMsaAxnhBmjmHfqv/e0g0QZc5bJnuD7JDsmAnH3/9X6fYKhoKyWouaOqm+ES
qwXD9SlOSAZk7/pvyHCOobSpmEGdByjwH+K//2CPMkIZ/8G+Ti3uZTgPVH1tmhvCAK2Mrf9N
2a8zFNTlM6hwYAut/0DtjCCKIadqIsOpn5oM12d4I7kgbcN/a74HDNmV2QzybGDroPahgv9A
wfKmaQzHPikyXJvlj+SC5DX/7cVfMqQVpzFIMf3DGwYNXbMZDr4WZ7g2JxTJgMRl/13kPjEk
5iUziP3/C/EykgvgrgESnRMXMOx9zMdwdX4UkgHxC/97qPxiiM1KYBD8+wfoV0awv8E6kAIQ
hCbNXMKw4w4rw9WF8QgDtGNm//fWZoHaCg0wqI3/YQbAY4OBYevVvwxXl6QgDHArXvv/6YtX
GIGHrJcByUEyEmIMu3qDGdEDmQHFwKfPoOkAqEFKCqwBI3YxNT2GuJkR7naopxCKpWVk4Ybh
dAGxgGIDAEeHlxEOlRWVAAAAAElFTkSuQmCC'
]
