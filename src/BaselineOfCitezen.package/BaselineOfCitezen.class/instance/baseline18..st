baselines
baseline18: spec
	<baseline>
	
	spec for: #common do: [
		spec baseline: 'SmaCC' with: [
				spec
					repository: 'github://ThierryGoubier/SmaCC:308d64665dfb25b1d21f93f44270066aecb5c672';
					loads: #('Runtime' )
					"Could be changed to git@github.com:SmaCCRefactoring/SmaCC.git "
					].
				
		spec
			package: 'Citezen-Model';
			package: 'Citezen-Parsers' with: [ spec requires: #('Citezen-Model' 'SmaCC')];
			package: 'Citezen-Rendering' with: [ spec requires: 'Citezen-Model' ];
			package: 'Citezen-Tools' with: [ spec requires: 'Citezen-Model' ];
			package: 'Citezen-Query' with: [ spec requires: 'Citezen-Model'];
			package: 'Citezen-Reborn' with: [spec requires: 'Citezen-Model'];
			package: 'Citezen-Checking' with: [ spec requires: 'Citezen-Model' ];
			package: 'Citezen-Stef' with: [ spec requires: 'Citezen-Reborn' ];
			package: 'Citezen-Tests' with: [ spec requires: #('Core') ].
			
		spec
			group: 'default' with: #('CoreAndTests');
			group: 'CoreAndTests' with: #('Core' 'Tests');
			group: 'Core' with: #('Citezen-Model'
							 'Citezen-Parsers'
							 'Citezen-Rendering'
							 'Citezen-Query'
							 'Citezen-Checking'
							 'Citezen-Reborn'
							 'Citezen-Tools'
							'Citezen-Stef'
							);
			group: 'Tests' with: #('Citezen-Tests')
	]