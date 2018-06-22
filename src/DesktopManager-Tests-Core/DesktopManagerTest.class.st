"
SUnit test for DesktopManager
"
Class {
	#name : #DesktopManagerTest,
	#superclass : #TestCase,
	#instVars : [
		'manager'
	],
	#category : 'DesktopManager-Tests-Core-Base'
}

{ #category : #defaults }
DesktopManagerTest >> defaultTestClass [

	^DesktopManager
]

{ #category : #running }
DesktopManagerTest >> setUp [

	super setUp.
	manager := self defaultTestClass soleInstance
]

{ #category : #running }
DesktopManagerTest >> tearDown [

	manager := nil.
	super tearDown
]

{ #category : #tests }
DesktopManagerTest >> testAccessingSoleInstance [

	self assert: self defaultTestClass soleInstance class equals: self defaultTestClass
]

{ #category : #tests }
DesktopManagerTest >> testAtLeastOneDesktop [

	self assert: manager desktops notEmpty
]

{ #category : #tests }
DesktopManagerTest >> testCreatingNewInstances [

	self should: [ self defaultTestClass new ] raise: Error
]

{ #category : #tests }
DesktopManagerTest >> testHaveAnActiveDesktop [

	self assert: manager activeDesktop notNil
]
