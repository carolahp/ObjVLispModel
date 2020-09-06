Class {
	#name : #ArrayedCollection,
	#superclass : #Object,
	#traits : '',
	#classTraits : '',
	#category : 'as yet unclassified'
}

{ #category : #'as yet unclassified' }
ArrayedCollection >> , otherCollection [ 
	"Concatenate two Strings or Collections."
	"#(2 4 6 8) , #(who do we appreciate) >>> #(2 4 6 8 who do we appreciate)"
	"((2989 storeStringBase: 16) copyFrom: 4 to: 6) , ' boy!' >>> 'BAD boys!'"
	
	^ self copyReplaceFrom: self size + 1
		  to: self size
		  with: otherCollection

]

{ #category : #'as yet unclassified' }
ArrayedCollection >> copyReplaceFrom: start to: stop with: replacementCollection [ 
	"Answer a copy of the receiver satisfying the following conditions: If 
	stop is less than start, then this is an insertion; stop should be exactly 
	start-1, start = 1 means insert before the first character, start = size+1 
	means append after last character. Otherwise, this is a replacement; start 
	and stop have to be within the receiver's bounds."

	| newSequenceableCollection newSize endReplacement |
	newSize := self size - (stop - start + 1) + replacementCollection size.
	endReplacement := start - 1 + replacementCollection size.
	newSequenceableCollection := self species new: newSize.
	start > 1 ifTrue:[
		newSequenceableCollection
			replaceFrom: 1
			to: start - 1
			with: self
			startingAt: 1].
	start <= endReplacement ifTrue:[
		newSequenceableCollection
			replaceFrom: start
			to: endReplacement
			with: replacementCollection
			startingAt: 1].
	endReplacement < newSize ifTrue:[
		newSequenceableCollection
			replaceFrom: endReplacement + 1
			to: newSize
			with: self
			startingAt: stop + 1].
	^newSequenceableCollection
]

{ #category : #'as yet unclassified' }
ArrayedCollection >> size [
	"Answer how many elements the receiver contains."

	<primitive: 62>
	^ self basicSize
]
