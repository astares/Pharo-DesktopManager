"
Desktop background
"
Class {
	#name : #DesktopBackground,
	#superclass : #Object,
	#instVars : [
		'name',
		'form'
	],
	#category : #'DesktopManager-Core-Backgrounds'
}

{ #category : #accessing }
DesktopBackground class >> bingCollection [
	<script: 'self bingCollection inspect'>
	
	^(self urlsFromBING: 8) collect: [:each | 			 
			self name: each key form: (ZnEasy getJpeg: each value) ]
]

{ #category : #'instance creation' }
DesktopBackground class >> name: aName form: aForm [

	^(self new)
		name: aName;
		form: aForm;
		yourself
]

{ #category : #utilities }
DesktopBackground class >> urlsFromBING: number [

	| json |
	json := (ZnEasy get: ('http://www.bing.com/HPImageArchive.aspx?format=js&idx=0&n=',number asString,'&mkt=en-US')) contents.
	^((STON fromString: json)
		at: 'images')
		collect: [:each | (each at: 'copyright') -> ('http://www.bing.com',(each at: 'url'))]
]

{ #category : #accessing }
DesktopBackground >> form [
	^ form
]

{ #category : #accessing }
DesktopBackground >> form: anObject [
	form := anObject
]

{ #category : #accessing }
DesktopBackground >> name [ 
	^ name
]

{ #category : #accessing }
DesktopBackground >> name: anObject [
	name := anObject
]

{ #category : #spotting }
DesktopBackground >> spotterPreviewDesktopIn: aComposite [
	<spotterPreview: 15>
	|newWidth newHeight|
	newWidth := 300.	
	newHeight := newWidth / form width * form height. 
	aComposite custom: 
		((form scaledToSize: newWidth @ newHeight) asAlphaImageMorph asBrick margin: 20)
]

{ #category : #actions }
DesktopBackground >> useAsDesktopBackground [

	World
		backgroundImage: self form layout: #scaled
]
