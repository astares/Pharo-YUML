"
Baseline for https://github.com/astares/Pharo-YUML
"
Class {
	#name : #BaselineOfYUML,
	#superclass : #BaselineOf,
	#category : #BaselineOfYUML
}

{ #category : #baseline }
BaselineOfYUML >> baseline: spec [
	<baseline>
	spec
		for: #common do: [
			"Packages"
			spec 
				package: 'YUML-Core';
				package: 'YUML-Core-Tests' with: [ spec requires: #('YUML-Core') ].
			
			"Groups"	
			spec	
				group: 'Core' with: #('YUML-Core');
				group: 'Tests' with: #('YUML-Core-Tests');
				group: 'all' with: #('Core' 'Tests');
				group: 'default' with: #('all')	
	]
]
