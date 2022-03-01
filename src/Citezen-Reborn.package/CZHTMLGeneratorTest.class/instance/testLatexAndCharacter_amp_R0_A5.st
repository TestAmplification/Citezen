as yet unclassified
testLatexAndCharacter_amp_R0_A5

	<madeBySmallAmp>
	| result anUndefinedObject aString |
	'SmallAmp has derived this test from `CZHTMLGeneratorTest>>#testLatexAndCharacter` by applying some transformations and regenerating its assertions.
	This test can cover this part:
	*	In `CZHTMLGenerator>> #defaultHeader` from 66 to 220:
		Operation: RemoveCaretOperator
		Code snippet: `^ ''<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<head>
		<title>  Put A title here  </title>
	</head>
<body>

'' withUnixLineEndings`
		Dynamic state: nil
		Mutant id: RemoveCaretOperator#CZHTMLGenerator#defaultHeader#66#220
'.
	aString := formatGenerator defaultHeader.
	self
		assert: aString
		equals:
			'<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<head>
		<title>  Put A title here  </title>
	</head>
<body>

';
		should: [ anUndefinedObject new ] raise: MessageNotUnderstood