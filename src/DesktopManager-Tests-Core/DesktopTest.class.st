"
SUnit test for Desktop
"
Class {
	#name : #DesktopTest,
	#superclass : #TestCase,
	#instVars : [
		'desk'
	],
	#category : 'DesktopManager-Tests-Core-Utilities'
}

{ #category : #tests }
DesktopTest >> testCurrent [

	self assert: Desktop current == DesktopManager soleInstance activeDesktop 

]

{ #category : #tests }
DesktopTest >> testInstanceCreation [

	desk := Desktop world: World. 
	self assert: desk world == World
]
