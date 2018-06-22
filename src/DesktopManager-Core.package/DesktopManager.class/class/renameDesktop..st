private
renameDesktop: aDesktop

	|newName|	
	newName := UIManager default request: 'Desktop name' initialAnswer: aDesktop name.
	newName ifNotNil: [ aDesktop name: newName ]