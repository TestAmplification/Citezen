as yet unclassified
testBlackListedEntriesAlsoFiltersInSubmission_amp_A86

	"SmallAmp has derived this test from `CZDocBuilderTest>>#testBlackListedEntriesAlsoFiltersInSubmission` by applying some transformations and regenerating its assertions.
	This test can cover this part:
	*	In `CZDocBuilder>> #periodicalQuery` from 18 to 37:
		Operation: RemoveCaretOperator
		Code snippet: `^ CZQuery periodical`
		Dynamic state: nil
		Mutant id: RemoveCaretOperator#CZDocBuilder#periodicalQuery#18#37
"

	<madeBySmallAmp>
	| builder aCZFieldQuery |
	builder := CZDocBuilder new bibset: bibset.
	aCZFieldQuery := builder
		                 keysOfBlackListedEntries: #( Abde10a Chev11a );
		                 filter;
		                 periodicalQuery.
	self assert: aCZFieldQuery class equals: CZFieldQuery