as yet unclassified
testBlackListedEntriesAlsoFiltersInSubmission_amp_A89

	"SmallAmp has derived this test from `CZDocBuilderTest>>#testBlackListedEntriesAlsoFiltersInSubmission` by applying some transformations and regenerating its assertions.
	This test can cover this part:
	*	In `CZDocBuilder>> #bookQuery` from 12 to 25:
		Operation: RemoveCaretOperator
		Code snippet: `^ CZQuery book`
		Dynamic state: nil
		Mutant id: RemoveCaretOperator#CZDocBuilder#bookQuery#12#25
"

	<madeBySmallAmp>
	| builder aCZTypeQuery |
	builder := CZDocBuilder new bibset: bibset.
	aCZTypeQuery := builder
		                keysOfBlackListedEntries: #( Abde10a Chev11a );
		                filter;
		                bookQuery.
	self assert: aCZTypeQuery class equals: CZTypeQuery