as yet unclassified
testKeywordLsePubRule_amp

	"SmallAmp has derived this test from `CZCheckerTest>>#testKeywordLsePubRule` by regenerating its assertions.
	This test can cover these parts:
	*	In `CZChecker>> #errorString` from 14 to 69:
		Operation: RemoveCaretOperator
		Code snippet: `^ errorStream contents trimRight ifEmpty: [ 'No error' ]`
		Dynamic state: nil
		Mutant id: RemoveCaretOperator#CZChecker#errorString#14#69
	*	In `CZChecker>> #checks` from 3455 to 3472:
		Operation: RemoveCaretOperator
		Code snippet: `^ self errorString`
		Dynamic state: nil
		Mutant id: RemoveCaretOperator#CZChecker#checks#3455#3472
	*	In `CZChecker>> #checkEntry:` from 23 to 72:
		Operation: RemoveCaretOperator
		Code snippet: `^ self checkBibset: (CZSet new addEntry: aCZEntry)`
		Dynamic state: nil
		Mutant id: RemoveCaretOperator#CZChecker#checkEntry:#23#72
	*	In `CZChecker>> #checkBibset:` from 233 to 245:
		Operation: RemoveCaretOperator
		Code snippet: `^ self checks`
		Dynamic state: nil
		Mutant id: RemoveCaretOperator#CZChecker#checkBibset:#233#245
"

	<madeBySmallAmp>
	| checker entry aString |
	checker := CZChecker new addRule: CZRmodKeywordLsePubRule new.
	entry := self brokenTeamEntry.
	aString := checker checkEntry: entry.
	self assert: aString equals: 'No error'.
	entry at: #keyword put: 'aKeyWord'.
	checker checkEntry: entry