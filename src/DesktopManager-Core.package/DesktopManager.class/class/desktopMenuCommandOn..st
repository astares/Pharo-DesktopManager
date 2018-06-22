window menu
desktopMenuCommandOn: aBuilder 
	<worldMenu> 

	(aBuilder item: #'Add new desktop')	 
		help: 'Add a new desktop';
		parent: #'Manage Desktops';
		order: 0;
		keyText: 'd, a';
		action: [ self soleInstance addNewDesktop ]. 

	(aBuilder item: #'Rename desktop')	 
		help: 'Rename active desktop';
		parent: #'Manage Desktops';
		order: 0;
		keyText: 'd, r';
		action: [ self soleInstance renameActiveDesktop ]. 

	 aBuilder withSeparatorAfter.

	(aBuilder item: #'Previous desktop')	
		enabled: self soleInstance desktops size > 1;
		help: 'Switch to previous desktop';
		parent: #'Manage Desktops';
		order: 1;
		keyText: 'd, p';
		action: [ self soleInstance switchToNextDesktop ].
		
	(aBuilder item: #'Next desktop')	 
		enabled: self soleInstance desktops size > 1;
		help: 'Switch to next desktop';
		parent: #'Manage Desktops';
		order: 2;
		keyText: 'd, n';
		action: [ self soleInstance switchToNextDesktop ].
		
	 aBuilder withSeparatorAfter.
	
	(aBuilder item: #'Toogle fullscreen')	 
		help: 'Toogle fullscreen mode';
		parent: #'Manage Desktops';
		order: 3;
		keyText: 'd, f';
		action: [ Display toggleFullscreen ].
		
	 aBuilder withSeparatorAfter.	
		
	(aBuilder item: #'Delete non-active desktops')
		enabled: self soleInstance desktops size > 1;
		help: 'Delete all but active desktop';
		parent: #'Manage Desktops';
		order: 4;
		action: [ self reset. ].
	
	
	(aBuilder item: #'Desktops Overview')	 
		help: 'Open desktop manager';
		parent: #'Manage Desktops';
		keyText: 'd, o';
		order: 5;
		action: [ self soleInstance inspect ].	
	