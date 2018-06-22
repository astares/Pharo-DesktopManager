operations
addNewDesktop
	|desk|
	desk := self createNewDesktop.
	
	self addDesktop: desk.
	self switchToDesktop: desk.
	