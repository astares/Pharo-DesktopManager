window menu
menuCommandOn: aBuilder 
	<worldMenu> 
	
	(aBuilder item: #'Desktops')	 
		help: 'Windows Tools';
		order: 4.1;
		icon: Smalltalk ui icons transcriptIcon.
	 aBuilder withSeparatorAfter 