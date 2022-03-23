import matlab.unittest.plugins.XMLPlugin;
import matlab.unittest.TestRunner;
suite = testsuite('TestFile.mldatx');
runner = TestRunner.withTextOutput;
runner.addPlugin(XMLPlugin.producingJUnitFormat('TestResult/myJUnitResults.xml'));
runner.run(suite);
