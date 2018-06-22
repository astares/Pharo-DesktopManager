window menu
desktopsDynamicMenuCommandOn: aBuilder 
	<worldMenu> 
 
	self soleInstance desktops doWithIndex: [:each :index | 
		(aBuilder item: each name asSymbol)
			parent: #'Desktops';
			help: 'Windows Tools';
			order: index;
			action: [ self soleInstance switchToDesktop: each ];
			icon: each icon ]
	