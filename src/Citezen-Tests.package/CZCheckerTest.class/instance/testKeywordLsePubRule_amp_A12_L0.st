as yet unclassified
testKeywordLsePubRule_amp_A12_L0

	<madeBySmallAmp>
	| checker entry aString |
	'SmallAmp has derived this test from `CZCheckerTest>>#testKeywordLsePubRule` by applying some transformations and regenerating its assertions.
	This test can cover these parts:
	*	In `CZChecker>> #checks` from 1029 to 1152:
		Operation: ReplaceIfFalseReceiverWithTrueOperator
		Code snippet: `toBeDeleted ifFalse: [ "removes empty fields" 
	(self checkEmptyField: field) ifFalse: [ toBeDeleted := true ] ]`
		Dynamic state: {#toBeDeleted->false}
		Mutant id: ReplaceIfFalseReceiverWithTrueOperator#CZChecker#checks#1029#1152
	*	In `CZChecker>> #checks` from 2758 to 2898:
		Operation: ReplaceIfTrueReceiverWithTrueOperator
		Code snippet: `warnings ifTrue: [ 
	newEntries add: entry.
	errorStream
		nextPutAll: ''(There are only warnings, the entry is not deleted)'';
		cr;
		cr ]`
		Dynamic state: {#warnings->false}
		Mutant id: ReplaceIfTrueReceiverWithTrueOperator#CZChecker#checks#2758#2898
	*	In `CZChecker>> #checks` from 2758 to 2898:
		Operation: ReplaceIfTrueWithIfFalseMutantOperator
		Code snippet: `warnings ifTrue: [ 
	newEntries add: entry.
	errorStream
		nextPutAll: ''(There are only warnings, the entry is not deleted)'';
		cr;
		cr ]`
		Dynamic state: {#warnings->false}
		Mutant id: ReplaceIfTrueWithIfFalseMutantOperator#CZChecker#checks#2758#2898
	*	In `CZChecker>> #checks` from 1084 to 1150:
		Operation: ReplaceIfFalseReceiverWithTrueOperator
		Code snippet: `(self checkEmptyField: field) ifFalse: [ toBeDeleted := true ]`
		Dynamic state: nil
		Mutant id: ReplaceIfFalseReceiverWithTrueOperator#CZChecker#checks#1084#1150
	*	In `CZChecker>> #checks` from 2726 to 2997:
		Operation: ReplaceIfTrueIfFalseReceiverWithFalseOperator
		Code snippet: `toBeInclude
	ifTrue: [ 
		warnings ifTrue: [ 
			newEntries add: entry.
			errorStream
				nextPutAll: ''(There are only warnings, the entry is not deleted)'';
				cr;
				cr ] ]
	ifFalse: [ 
		errorStream
			nextPutAll: ''(There are errors, the entry is deleted)'';
			cr;
			cr ]`
		Dynamic state: {#toBeInclude->true. #warnings->false}
		Mutant id: ReplaceIfTrueIfFalseReceiverWithFalseOperator#CZChecker#checks#2726#2997
	*	In `CZChecker>> #checks` from 1029 to 1152:
		Operation: ReplaceIfFalseWithIfTrueMutantOperator
		Code snippet: `toBeDeleted ifFalse: [ "removes empty fields" 
	(self checkEmptyField: field) ifFalse: [ toBeDeleted := true ] ]`
		Dynamic state: {#toBeDeleted->false}
		Mutant id: ReplaceIfFalseWithIfTrueMutantOperator#CZChecker#checks#1029#1152
'.
	checker := CZChecker new addRule: CZRmodKeywordLsePubRule new.
	entry := self brokenTeamEntry.
	checker
		checkEntry: entry;
		notOnlyWarnings.
	entry at: #keyword put: ''.
	aString := checker checkEntry: entry.
	self assert: aString equals: 'Warning: Removes empty field: keyword'