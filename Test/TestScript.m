  import matlab.unittest.TestRunner;
  import matlab.unittest.Verbosity;
  import matlab.unittest.plugins.XMLPlugin;
  
  suite = testsuite(pwd, 'IncludeSubfolders', true);
  
  [~,~] = mkdir('TestResult');
  
  runner = TestRunner.withTextOutput('OutputDetail', Verbosity.Detailed);
  runner.addPlugin(XMLPlugin.producingJUnitFormat('TestResult/results.xml'));
  
  results = runner.run(suite);
  
  nfailed = nnz([results.Failed]);
  assert(nfailed == 0, [num2str(nfailed) ' test(s) failed.']);