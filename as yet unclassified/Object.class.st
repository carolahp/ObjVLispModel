Class {
	#name : #Object,
	#superclass : #nil,
	#traits : '',
	#classTraits : '',
	#category : 'as yet unclassified'
}

{ #category : #'as yet unclassified' }
Object >> basicSize [
	"Primitive. Answer the number of indexable variables in the receiver. 
	This value is the same as the largest legal subscript. Essential. Do not 
	override in any subclass. See Object documentation whatIsAPrimitive."

	<primitive: 62>
	"The number of indexable fields of fixed-length objects is 0"
	^0	
]

{ #category : #'as yet unclassified' }
Object >> ifNotNil: ifNotNilBlock [
	"Evaluate the block, unless I'm == nil (q.v.). If the receiver is not nil, pass it as argument to the block."

	"(2 ifNotNil: [ :o | o + 3]) >>> 5"
	"(nil ifNotNil: [:o | o +3 ]) >>> nil"

	^ ifNotNilBlock cull: self
]

{ #category : #'as yet unclassified' }
Object >> initialize [
	"Subclasses should redefine this method to perform initializations on instance creation" 
]

{ #category : #'as yet unclassified' }
Object >> species [
	"Answer the preferred class for reconstructing the receiver.  For example, 
	collections create new collections whenever enumeration messages such as 
	collect: or select: are invoked.  The new kind of collection is determined by 
	the species of the original collection.  Species and class are not always the 
	same.  For example, the species of Interval is Array."
	<primitive: 111>
	^self class
]
