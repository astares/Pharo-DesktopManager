"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestDesktopManagerCore,
	#superclass : #PackageManifest,
	#category : #'DesktopManager-Core-Manifest'
}

{ #category : #'code-critics' }
ManifestDesktopManagerCore class >> ruleRBClassNotReferencedRuleV1FalsePositive [
	^ #(#(#(#RGClassDefinition #(#DesktopKeymapCategory)) #'2018-06-22T07:46:22.800915+02:00') )
]
