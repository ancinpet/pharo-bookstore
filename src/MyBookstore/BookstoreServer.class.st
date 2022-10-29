Class {
	#name : #BookstoreServer,
	#superclass : #Object,
	#instVars : [
		'teapot',
		'bookstore'
	],
	#classInstVars : [
		'bookstore'
	],
	#category : #'MyBookstore-server'
}

{ #category : #adding }
BookstoreServer >> addBookFor: aTeaRequest [
	| book |
	book := Book new
	id: (aTeaRequest at: #id);
	author: (aTeaRequest at: #author);
	title: (aTeaRequest at: #title);
	yourself.
	bookstore addBook: book.
	^ book
]

{ #category : #accessing }
BookstoreServer >> bookstore: aBookstore [ 
	bookstore := aBookstore
]

{ #category : #accessing }
BookstoreServer >> getBooksFor: aTeaRequest [
	^ bookstore books
]

{ #category : #actions }
BookstoreServer >> start [
	teapot ifNotNil: [ self stop ].
	teapot := Teapot
		configure:
			{(#defaultOutput -> #json).
			(#port -> 8080).
			(#debugMode -> true)}.
	teapot removeAllDynamicRoutes.
	teapot
		GET: '/' -> [ :req | self welcomeFor: req ];
		GET: '/books' -> [ :req | self getBooksFor: req ];
		PUT: '/books/<id>' -> [ :req | self addBookFor: req ];
		DELETE: '/books/<id>' -> [ :req | self deleteBookFor: req ];
		start
]
