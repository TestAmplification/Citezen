as yet unclassified
testBlackListedEntriesAlsoFiltersInSubmission_amp_A96

	"SmallAmp has derived this test from `CZDocBuilderTest>>#testBlackListedEntriesAlsoFiltersInSubmission` by applying some transformations and regenerating its assertions.
	This test can cover this part:
	*	In `CZDocBuilder>> #PhDAndHabilitationQuery` from 26 to 53:
		Operation: RemoveCaretOperator
		Code snippet: `^ CZQuery PhDAndHabilitation`
		Dynamic state: nil
		Mutant id: RemoveCaretOperator#CZDocBuilder#PhDAndHabilitationQuery#26#53
"

	<madeBySmallAmp>
	| builder aCZOrQuery |
	builder := CZDocBuilder new bibset: bibset.
	aCZOrQuery := builder
		              keysOfBlackListedEntries: #( Abde10a Chev11a );
		              filter;
		              PhDAndHabilitationQuery.
	self assert: aCZOrQuery class equals: CZOrQuery