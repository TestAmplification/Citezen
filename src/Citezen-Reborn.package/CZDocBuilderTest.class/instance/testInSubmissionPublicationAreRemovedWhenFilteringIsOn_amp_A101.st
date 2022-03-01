as yet unclassified
testInSubmissionPublicationAreRemovedWhenFilteringIsOn_amp_A101

	"SmallAmp has derived this test from `CZDocBuilderTest>>#testInSubmissionPublicationAreRemovedWhenFilteringIsOn` by applying some transformations and regenerating its assertions.
	This test can cover this part:
	*	In `CZDocBuilder>> #journalQuery` from 15 to 31:
		Operation: RemoveCaretOperator
		Code snippet: `^ CZQuery journal`
		Dynamic state: nil
		Mutant id: RemoveCaretOperator#CZDocBuilder#journalQuery#15#31
"

	<madeBySmallAmp>
	| builder aCZTypeQuery |
	builder := CZDocBuilder new bibset: bibset.
	aCZTypeQuery := builder
		                setFilteringOn;
		                filter;
		                journalQuery.
	self assert: aCZTypeQuery class equals: CZTypeQuery