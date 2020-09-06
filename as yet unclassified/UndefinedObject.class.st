Class {
	#name : #UndefinedObject,
	#superclass : #Object,
	#traits : '',
	#classTraits : '',
	#category : 'as yet unclassified'
}

{ #category : #'as yet unclassified' }
UndefinedObject >> basicCopy [
	"There is the only one instance of me, so answer myself."

	^ self
]

{ #category : #'as yet unclassified' }
UndefinedObject >> ifNil: aBlock [
	"A convenient test, in conjunction with Object ifNil:"

	^ aBlock value
]

{ #category : #'as yet unclassified' }
UndefinedObject >> ifNil: nilBlock ifNotNil: ifNotNilBlock [
	"Evaluate the block for nil because I'm == nil"

	^ nilBlock value
]

{ #category : #'as yet unclassified' }
UndefinedObject >> ifNotNil: aBlock [
	"A convenient test, in conjunction with Object ifNotNil:"

	^ self
]

{ #category : #'as yet unclassified' }
UndefinedObject >> isNil [
	"Answer true if the receiver is nil."

	^ true
]

{ #category : #'as yet unclassified' }
UndefinedObject >> new [
	"There is a single unique instance of me."

	self cannotInstantiate
]

{ #category : #'as yet unclassified' }
UndefinedObject >> printOn: aStream [
	aStream nextPutAll: 'nil'
]
