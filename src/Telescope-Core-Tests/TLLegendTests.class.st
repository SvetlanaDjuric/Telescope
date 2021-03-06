Class {
	#name : #TLLegendTests,
	#superclass : #TestCase,
	#instVars : [
		'legend'
	],
	#category : #'Telescope-Core-Tests-Model'
}

{ #category : #tests }
TLLegendTests >> testAlphabeticalSortingOfLegend [
	legend := TLDynamicLegendEntry
		description: #yourself
		context: (#(#guillaume #yann #cyril #usman) collect: [ :aName | TLSimpleNode withEntity: aName ]).
	self
		assert: (legend obtainAssociations keys)
		equals: #(#cyril #guillaume #usman #yann)
]

{ #category : #tests }
TLLegendTests >> testObtainAssociationsUseDescriptionValuable [
	legend := TLDynamicLegendEntry
		description: #capitalized
		context: (#(#guillaume #yann #cyril #usman) collect: [ :aName | TLSimpleNode withEntity: aName ]).
	self assert: legend obtainAssociations keys equals: #(#Cyril #Guillaume #Usman #Yann)
]
