as yet unclassified
testAnEmptyDocumentWithATitleHasJustOneElement_amp_A92

	"SmallAmp has derived this test from `CZDocBuilderTest>>#testAnEmptyDocumentWithATitleHasJustOneElement` by applying some transformations and regenerating its assertions.
	This test can cover this part:
	*	In `CZDocBuilder>> #internationalWorkshopQuery` from 29 to 59:
		Operation: RemoveCaretOperator
		Code snippet: `^ CZQuery internationalWorkshop`
		Dynamic state: nil
		Mutant id: RemoveCaretOperator#CZDocBuilder#internationalWorkshopQuery#29#59
"

	<madeBySmallAmp>
	| builder aCZFieldQuery |
	builder := CZDocBuilder new bibset: bibset.
	aCZFieldQuery := builder
		                 addTitle: CZTitle new;
		                 document;
		                 internationalWorkshopQuery.
	self assert: aCZFieldQuery class equals: CZFieldQuery