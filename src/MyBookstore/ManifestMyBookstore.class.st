"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestMyBookstore,
	#superclass : #PackageManifest,
	#category : #'MyBookstore-Manifest'
}

{ #category : #'code-critics' }
ManifestMyBookstore class >> ruleRBUncommonMessageSendRuleV1FalsePositive [
	^ #(#(#(#RGPackageDefinition #(#MyBookstore)) #'2020-02-28T13:44:13.929705+01:00') )
]
