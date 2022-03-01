as yet unclassified
testSelectingJournalEffectivelyReturnsOnlyJournals_amp

	"SmallAmp has derived this test from `CZDocBuilderTest>>#testSelectingJournalEffectivelyReturnsOnlyJournals` by regenerating its assertions.
	This test can cover this part:
	*	In `CZDocBuilder>> #keysOfBlackListedEntries` from 155 to 180:
		Operation: RemoveCaretOperator
		Code snippet: `^ keysOfBlackListedEntries`
		Dynamic state: {#keysOfBlackListedEntries->#()}
		Mutant id: RemoveCaretOperator#CZDocBuilder#keysOfBlackListedEntries#155#180
"

	<madeBySmallAmp>
	| builder aCZDocBuilder |
	aCZDocBuilder := CZDocBuilder new.
	self
		assert: aCZDocBuilder keysOfBlackListedEntries class
		equals: Array.
	builder := aCZDocBuilder bibset: bibset