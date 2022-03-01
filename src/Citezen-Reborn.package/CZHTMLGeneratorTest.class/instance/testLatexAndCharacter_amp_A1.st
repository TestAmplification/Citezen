as yet unclassified
testLatexAndCharacter_amp_A1

	"self debug: #testLatexAndCharacter"

	<smallAmpCoveres:
	'RemoveCaretOperator#CZHTMLGenerator#setEncodedCharacterTransformationTable#93#134'>
	<smallAmpFrom: 'CZHTMLGeneratorTest>>#testLatexAndCharacter'>
	<madeBySmallAmp>
	| result aCZHTMLGenerator1 aCZHTMLGenerator2 aClass aCollection |
	aCollection := formatGenerator setEncodedCharacterTransformationTable.
	aClass := self
		          assert: formatGenerator class equals: CZHTMLGenerator;
		          assert: formatGenerator contents equals: '';
		          assert: formatGenerator fieldSeparatorString equals: ', ';
		          assert: aCollection class equals: IdentityDictionary;
		          assert: aCollection values class equals: Array;
		          assert: aCollection values size equals: 34;
		          assert: aCollection keysSortedSafely class equals: Array;
		          assert: aCollection keysSortedSafely size equals: 34;
		          assert: aCollection isDictionary;
		          assert: aCollection isHealthy;
		          assert: aCollection associations class equals: Array;
		          assert: aCollection associations size equals: 34;
		          assert: aCollection keys class equals: Array;
		          assert: aCollection keys size equals: 34;
		          generatorClass.
	self assert: aClass asString equals: 'CZHTMLGenerator'.
	aCZHTMLGenerator2 := aClass new.
	self
		assert: aClass asString equals: 'CZHTMLGenerator';
		assert: aCZHTMLGenerator2 class equals: CZHTMLGenerator;
		assert: aCZHTMLGenerator2 contents equals: '';
		assert: aCZHTMLGenerator2 fieldSeparatorString equals: ', '.
	aCZHTMLGenerator1 := aCZHTMLGenerator2 visit: uqui2.
	self
		assert: aCZHTMLGenerator2 class equals: CZHTMLGenerator;
		assert: aCZHTMLGenerator2 contents
		equals:
			'<li>
<span class="author">Mart&iacute;n Dias, Ver&oacute;nica Uquillas G&oacute;mez, Damien Cassou and St&eacute;phane Ducasse</span>, <span class="title">Software Integration Questions: A Quantitative Survey with &</span>, <span class="year">2014</span>, <span class="url"><a href="https://hal.inria.fr/hal-01093496">URL</a></span>.
</li>
';
		assert: aCZHTMLGenerator2 fieldSeparatorString equals: ', '.
	result := aCZHTMLGenerator1 contents.
	self
		assert: aCZHTMLGenerator1 class equals: CZHTMLGenerator;
		assert: aCZHTMLGenerator1 contents
		equals:
			'<li>
<span class="author">Mart&iacute;n Dias, Ver&oacute;nica Uquillas G&oacute;mez, Damien Cassou and St&eacute;phane Ducasse</span>, <span class="title">Software Integration Questions: A Quantitative Survey with &</span>, <span class="year">2014</span>, <span class="url"><a href="https://hal.inria.fr/hal-01093496">URL</a></span>.
</li>
';
		assert: aCZHTMLGenerator1 fieldSeparatorString equals: ', ';
		assert: result
		equals:
			'<li>
<span class="author">Mart&iacute;n Dias, Ver&oacute;nica Uquillas G&oacute;mez, Damien Cassou and St&eacute;phane Ducasse</span>, <span class="title">Software Integration Questions: A Quantitative Survey with &</span>, <span class="year">2014</span>, <span class="url"><a href="https://hal.inria.fr/hal-01093496">URL</a></span>.
</li>
'