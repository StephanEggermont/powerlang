Class {
	#name : #ArgumentBinding,
	#superclass : #LocalBinding,
	#category : #'Powerlang-Core-SCompiler'
}

{ #category : #actions }
ArgumentBinding >> beInlined [
	environment := InlinedArgEnvironment new
]

{ #category : #testing }
ArgumentBinding >> canBeAssigned [
	^false
]

{ #category : #actions }
ArgumentBinding >> encodeUsing: anAstcodeEncoder [
	anAstcodeEncoder encodeArgument: index env: environment
]

{ #category : #initialization }
ArgumentBinding >> initialize [
	super initialize.
	environment := ArgumentEnvironment new
]

{ #category : #testing }
ArgumentBinding >> isArgument [
	^true
]

{ #category : #actions }
ArgumentBinding >> isInlined [
	^environment isInlinedArgument
]