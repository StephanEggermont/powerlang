Class {
	#name : #PushRopcode,
	#superclass : #StackOpcode,
	#category : #'Powerlang-Core-Nativization'
}

{ #category : #accessing }
PushRopcode >> nativizeUsing: anAssembler for: messageNativizer [
	messageNativizer pushR
]
