"
Generator for YUML
"
Class {
	#name : #YUMLGenerator,
	#superclass : #Object,
	#instVars : [
		'stream'
	],
	#category : #'YUML-Core-Generator'
}

{ #category : #example }
YUMLGenerator class >> exampleBoolean [

	self open: Boolean
]

{ #category : #example }
YUMLGenerator class >> exampleCollection [

	self open: Collection
]

{ #category : #example }
YUMLGenerator class >> exampleString [

	self open: String
]

{ #category : #'interface opening' }
YUMLGenerator class >> open: aClass [
	|content|
	content := self new generateHierarchyFor: aClass.
	WebBrowser openOn: content
	
	
]

{ #category : #'initialize-release' }
YUMLGenerator >> contents [
	^stream contents
]

{ #category : #generating }
YUMLGenerator >> generateHierarchyFor: aClass [
	self writeClass: aClass.
	self generateSubHierarchyFor: aClass.
	^self contents
	
]

{ #category : #generating }
YUMLGenerator >> generateSubHierarchyFor: aClass [
	aClass subclasses do: [:each |
		stream nextPut: $,.
		self writeClass: aClass.
		stream nextPutAll: '^-'.
		self writeClass: each.
		self generateSubHierarchyFor: each.
	]
	
]

{ #category : #'initialize-release' }
YUMLGenerator >> initialize [
	super initialize.
	stream := String new writeStream.
	stream nextPutAll: 'http://yuml.me/diagram/class/class/'
]

{ #category : #generating }
YUMLGenerator >> writeClass: aClass [
		stream nextPut: $[.			
		stream nextPutAll: aClass name.
		stream nextPut: $]

]
