Class {
	#name : #YUMLGeneratorTest,
	#superclass : #TestCase,
	#instVars : [
		'generator'
	],
	#category : #'YUML-Core-Tests-Generator'
}

{ #category : #running }
YUMLGeneratorTest >> setUp [
	super setUp.
	generator := YUMLGenerator new
]

{ #category : #testing }
YUMLGeneratorTest >> testGenerateSimpleClass [
	| content |
	content := generator generateHierarchyFor: YUMLTestMockA.
	
	self assert: content equals: 'http://yuml.me/diagram/class/class/[YUMLTestMockA],[YUMLTestMockA]^-[YUMLTestMockB],[YUMLTestMockA]^-[YUMLTestMockC],[YUMLTestMockA]^-[YUMLTestMockD],[YUMLTestMockD]^-[YUMLTestMockE]'
]
