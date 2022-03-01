as yet unclassified
testInSubmissionPublicationAreRemovedWhenFilteringIsOn_amp_A10

	"SmallAmp has derived this test from `CZDocBuilderTest>>#testInSubmissionPublicationAreRemovedWhenFilteringIsOn` by applying some transformations and regenerating its assertions.
	This test can cover this part:
	*	In `CZDocBuilder>> #defaultFieldOrder` from 21 to 123:
		Operation: RemoveCaretOperator
		Code snippet: `^ #( #author #title #chapter #journal #booktitle #volume #pages #publisher
     #school #year #pdf #url #doi )`
		Dynamic state: nil
		Mutant id: RemoveCaretOperator#CZDocBuilder#defaultFieldOrder#21#123
"

	<madeBySmallAmp>
	| builder aCollection |
	builder := CZDocBuilder new bibset: bibset.
	aCollection := builder
		               setFilteringOn;
		               defaultFieldOrder.
	self assert: aCollection class equals: Array.
	builder filter