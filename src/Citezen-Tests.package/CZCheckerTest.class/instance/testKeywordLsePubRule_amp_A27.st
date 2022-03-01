as yet unclassified
testKeywordLsePubRule_amp_A27

	"SmallAmp has derived this test from `CZCheckerTest>>#testKeywordLsePubRule` by applying some transformations and regenerating its assertions.
	This test can cover this part:
	*	In `CZChecker>> #checkEmptyField:` from 28 to 153:
		Operation: ReplaceIfTrueReceiverWithFalseOperator
		Code snippet: `aCZField value = '' ifTrue: [ 
	errorStream
		nextPutAll: 'Warning: Removes empty field: ' , aCZField key;
		cr.
	^ false ]`
		Dynamic state: nil
		Mutant id: ReplaceIfTrueReceiverWithFalseOperator#CZChecker#checkEmptyField:#28#153
"

	<madeBySmallAmp>
	| checker entry |
	checker := CZChecker new addRule: CZRmodKeywordLsePubRule new.
	entry := self brokenTeamEntry.
	checker checkEntry: entry.
	entry at: #keyword put: 'aKeyWord'.
	checker checkEntry: entry.
	self
		should: [ checker checkEmptyField: CZField new ]
		raise: MessageNotUnderstood