as yet unclassified
testFieldOrderShouldBeRespectedTwo_amp_A82_A14

	"self debug: #testFieldOrderShouldBeRespectedTwo"

	<smallAmpCoveres:
	'RemoveCaretOperator#CZFileFormatGenerator#emitFieldSeparation#23#79'>
	<smallAmpFrom:
	'CZFileFormatGeneratorTest>>#testFieldOrderShouldBeRespectedTwo'>
	<madeBySmallAmp>
	| visitor aClass aString |
	aString := formatGenerator emitFieldSeparation.
	aClass := self
		          assert: formatGenerator class
		          equals: CZFileFormatGenerator;
		          assert: formatGenerator fieldSeparatorString equals: ', ';
		          assert: formatGenerator authorNameExpandOption
		          equals: #useDisplayFullName;
		          assert: formatGenerator contents equals: ', ';
		          assert: formatGenerator fieldOrder class equals: Array;
		          assert: formatGenerator fieldOrder size equals: 13;
		          assert: aString equals: ', ';
		          generatorClass.
	self assert: aClass asString equals: 'CZFileFormatGenerator'.
	visitor := aClass new.
	self
		assert: aClass asString equals: 'CZFileFormatGenerator';
		assert: visitor class equals: CZFileFormatGenerator;
		assert: visitor fieldSeparatorString equals: ', ';
		assert: visitor authorNameExpandOption equals: #useDisplayFullName;
		assert: visitor contents equals: '';
		assert: visitor fieldOrder class equals: Array;
		assert: visitor fieldOrder size equals: 15.
	visitor fieldOrder: #( #title #author #year ).
	self
		assert: visitor class equals: CZFileFormatGenerator;
		assert: visitor fieldSeparatorString equals: ', ';
		assert: visitor authorNameExpandOption equals: #useDisplayFullName;
		assert: visitor contents equals: '';
		assert: visitor fieldOrder class equals: Array;
		assert: visitor fieldOrder size equals: 3;
		assert: visitor fieldOrder equals: #( #title #author #year ).
	visitor visit: entry2.
	self
		assert: visitor class equals: CZFileFormatGenerator;
		assert: visitor fieldSeparatorString equals: ', ';
		assert: visitor authorNameExpandOption equals: #useDisplayFullName;
		assert: visitor contents
		equals:
			'Package Reference Fingerprint: a Rich and Compact Visualization to Understand Package Relationships, Abdeen, Hani and Alloui, Ilham and Ducasse, St\''ephane and Pollet, Damien and Suen, Mathieu, 2008, ACT, aeres08, internationalconference stefPub, European Conference on Software Maintenance and Reengineering (CSMR), ADAM, moose-pub, Athens, Greece, Acceptance rate: 24/87 = 27\%, 87, 24, 213--222, IEEE Computer Society Press, 27%, oui, http://scg.unibe.ch/archive/external/Abde08a.pdf, http://scg.unibe.ch/archive/external/Abde08a.pdf.
';
		assert: visitor fieldOrder class equals: Array;
		assert: visitor fieldOrder size equals: 3;
		assert: visitor fieldOrder equals: #( #title #author #year ).
	visitor visitDoc: CZDoc new.
	self
		assert: visitor class equals: CZFileFormatGenerator;
		assert: visitor fieldSeparatorString equals: ', ';
		assert: visitor authorNameExpandOption equals: #useDisplayFullName;
		assert: visitor contents
		equals:
			'Package Reference Fingerprint: a Rich and Compact Visualization to Understand Package Relationships, Abdeen, Hani and Alloui, Ilham and Ducasse, St\''ephane and Pollet, Damien and Suen, Mathieu, 2008, ACT, aeres08, internationalconference stefPub, European Conference on Software Maintenance and Reengineering (CSMR), ADAM, moose-pub, Athens, Greece, Acceptance rate: 24/87 = 27\%, 87, 24, 213--222, IEEE Computer Society Press, 27%, oui, http://scg.unibe.ch/archive/external/Abde08a.pdf, http://scg.unibe.ch/archive/external/Abde08a.pdf.
  
';
		assert: visitor fieldOrder class equals: Array;
		assert: visitor fieldOrder size equals: 3;
		assert: visitor fieldOrder equals: #( #title #author #year )