as yet unclassified
testInSubmissionPublicationAreRemovedWhenFilteringIsOn_amp_A95

	"SmallAmp has derived this test from `CZDocBuilderTest>>#testInSubmissionPublicationAreRemovedWhenFilteringIsOn` by applying some transformations and regenerating its assertions.
	This test can cover this part:
	*	In `CZDocBuilder>> #bookChapterQuery` from 19 to 39:
		Operation: RemoveCaretOperator
		Code snippet: `^ CZQuery bookChapter`
		Dynamic state: nil
		Mutant id: RemoveCaretOperator#CZDocBuilder#bookChapterQuery#19#39
"

	<madeBySmallAmp>
	| builder aCZFieldQuery |
	builder := CZDocBuilder new bibset: bibset.
	aCZFieldQuery := builder
		                 setFilteringOn;
		                 filter;
		                 bookChapterQuery.
	self assert: aCZFieldQuery class equals: CZFieldQuery