Class {
	#name : #Bookstore,
	#superclass : #Object,
	#instVars : [
		'books'
	],
	#category : #'MyBookstore-model'
}

{ #category : #adding }
Bookstore >> addBook: aBook [
	books at: aBook id put: aBook
]

{ #category : #'as yet unclassified' }
Bookstore >> deleteBookFor: aTeaRequest [ 

]

{ #category : #initialization }
Bookstore >> initialize [
	super initialize.
	books := Dictionary new.
]
