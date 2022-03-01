as yet unclassified
testFieldOrderShouldBeRespectedTwo_amp_A25_A29_N0

	"SmallAmp has derived this test from `CZFileFormatGeneratorTest>>#testFieldOrderShouldBeRespectedTwo` by applying some transformations and regenerating its assertions.
	This test can cover this part:
	*	In `CZFileFormatGenerator>> #visitHeader:` from 27 to 168:
		Operation: ReplaceIfTrueIfFalseReceiverWithFalseOperator
		Code snippet: `aCZHeader isDefined
	ifTrue: [ self outputStream nextPutAll: aCZHeader text ]
	ifFalse: [ self outputStream nextPutAll: self defaultHeader ]`
		Dynamic state: nil
		Mutant id: ReplaceIfTrueIfFalseReceiverWithFalseOperator#CZFileFormatGenerator#visitHeader:#27#168
"

	<madeBySmallAmp>
	| visitor |
	self
		should: [ formatGenerator visitHeader: nil ]
		raise: MessageNotUnderstood