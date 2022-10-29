Class {
	#name : #Book,
	#superclass : #Object,
	#instVars : [
		'author',
		'title',
		'id'
	],
	#category : #'MyBookstore-model'
}

{ #category : #'as yet unclassified' }
Book class >> neoJsonMapping: mapper [ 
	mapper for: self do: [ :mapping | mapping mapInstVars ]
]

{ #category : #accessing }
Book >> author [
	^ author
]

{ #category : #accessing }
Book >> author: anObject [
	author := anObject
]

{ #category : #accessing }
Book >> id [
	^ id
]

{ #category : #accessing }
Book >> id: anObject [
	id := anObject
]

{ #category : #accessing }
Book >> title [
	^ title
]

{ #category : #accessing }
Book >> title: anObject [
	title := anObject
]
