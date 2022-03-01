as yet unclassified
testLatexAndCharacter_amp_A4

	"SmallAmp has derived this test from `CZHTMLGeneratorTest>>#testLatexAndCharacter` by applying some transformations and regenerating its assertions.
	This test can cover this part:
	*	In `CZHTMLGenerator>> #defaultFooter` from 16 to 54:
		Operation: RemoveCaretOperator
		Code snippet: `^ '</body>
</html>' withUnixLineEndings`
		Dynamic state: nil
		Mutant id: RemoveCaretOperator#CZHTMLGenerator#defaultFooter#16#54
"

	<madeBySmallAmp>
	| result aString |
	aString := formatGenerator defaultFooter.
	result := ((self
		            assert: aString equals: '</body>
</html>';
		            generatorClass) new visit: uqui2) contents