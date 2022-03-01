as yet unclassified
testBlackListedEntriesAlsoFiltersInSubmission_amp_A60

	"SmallAmp has derived this test from `CZDocBuilderTest>>#testBlackListedEntriesAlsoFiltersInSubmission` by applying some transformations and regenerating its assertions.
	This test can cover this part:
	*	In `CZDocBuilder>> #internationalConferenceQuery` from 32 to 123:
		Operation: RemoveCaretOperator
		Code snippet: `^ (self annotationWithType: '*internationalconference*') AND:
	  self topConferenceQuery NOT`
		Dynamic state: nil
		Mutant id: RemoveCaretOperator#CZDocBuilder#internationalConferenceQuery#32#123
"

	<madeBySmallAmp>
	| builder aCZAndQuery |
	builder := CZDocBuilder new bibset: bibset.
	aCZAndQuery := builder
		               keysOfBlackListedEntries: #( Abde10a Chev11a );
		               filter;
		               internationalConferenceQuery.
	self assert: aCZAndQuery class equals: CZAndQuery