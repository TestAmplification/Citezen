as yet unclassified
testUndefined_amp

	"SmallAmp has derived this test from `CZFieldTest>>#testUndefined` by regenerating its assertions.
	This test can cover these parts:
	*	In `CZField>> #isPDF` from 11 to 20:
		Operation: ReplaceEqualWithNotEqualOperator
		Code snippet: `key = #pdf`
		Dynamic state: nil
		Mutant id: ReplaceEqualWithNotEqualOperator#CZField#isPDF#11#20
	*	In `CZField>> #isURL` from 11 to 20:
		Operation: ReplaceEqualWithNotEqualOperator
		Code snippet: `key = #url`
		Dynamic state: nil
		Mutant id: ReplaceEqualWithNotEqualOperator#CZField#isURL#11#20
	*	In `CZField>> #rawValueObject` from 17 to 23:
		Operation: RemoveCaretOperator
		Code snippet: `^ value`
		Dynamic state: nil
		Mutant id: RemoveCaretOperator#CZField#rawValueObject#17#23
	*	In `CZField>> #isHalId` from 13 to 27:
		Operation: ReplaceEqualWithNotEqualOperator
		Code snippet: `key = #'hal-id'`
		Dynamic state: nil
		Mutant id: ReplaceEqualWithNotEqualOperator#CZField#isHalId#13#27
	*	In `CZField>> #isDoi` from 11 to 20:
		Operation: ReplaceEqualWithNotEqualOperator
		Code snippet: `key = #doi`
		Dynamic state: nil
		Mutant id: ReplaceEqualWithNotEqualOperator#CZField#isDoi#11#20
"

	<madeBySmallAmp>
	| undefinedField |
	undefinedField := CZField undefined: #undefined.
	self
		assert: undefinedField rawValueObject class equals: CZValue;
		deny: undefinedField rawValueObject scope isDoi;
		deny: undefinedField rawValueObject scope isURL;
		deny: undefinedField rawValueObject scope isPDF;
		deny: undefinedField rawValueObject scope isHalId