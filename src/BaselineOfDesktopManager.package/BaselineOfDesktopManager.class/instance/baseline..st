baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec 
			package: 'DesktopManager-Core';
			package: 'DesktopManager-Tests-Core' with: [
				spec requires: #('DesktopManager-Core' ). ].
		spec 
			group: 'Core' with: #('DesktopManager-Core' );
			group: 'Tests' with: #('DesktopManager-Tests-Core' );
			group: 'default' with: #('Core' 'Tests' ). ]