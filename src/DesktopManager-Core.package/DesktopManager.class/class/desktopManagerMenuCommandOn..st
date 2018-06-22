window menu
desktopManagerMenuCommandOn: aBuilder 
	<worldMenu> 
 
	 (aBuilder item: #'Manage Desktops')
		parent: #'Desktops';	 
		help: 'Windows Tools';
		order: 0;
		icon: Smalltalk ui icons newDesktopIcon.
 	 aBuilder withSeparatorAfter.