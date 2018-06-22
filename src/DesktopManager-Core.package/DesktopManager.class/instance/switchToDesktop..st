private
switchToDesktop: aDesktop	
	
	currentDesktopIndex := desktops indexOf: aDesktop.
	aDesktop world install.
	Display restore.
	UIManager default inform: aDesktop name