// Test the COM interfaces of the Weaver but simulating some behavioral
// aspects of the CLR.

class StatelessComTest : public TestFixture
{
  CPPUNIT_TEST_SUITE( StatelessComTest );
    CPPUNIT_TEST( testCreateInstance );
    CPPUNIT_TEST( testInitialize );
    CPPUNIT_TEST( testShutDown );
  CPPUNIT_TEST_SUITE_END();
public:

  // Trace calls to ctors and dtors
  
  StatelessComTest()
  {
    cout << "In StatelessComTest ctor" << endl;
  }

  ~StatelessComTest()
  {
    cout << "In StatelessComTest dtor" << endl;
  }

  void setUp() 
  {
    cout << "In setup for StatelessComTest" << endl;
  }

  void tearDown() 
  {
    cout << "In tearDown for StatelessComTest" << endl;
  }

  void testCreateInstance() {}
  void testInitialize() {}
  void testShutDown() {}
};

class StatefulComTest : public TestFixture
{
public:

  // Trace calls to ctors and dtors

  StatefulComTest()
  {
    cout << "In StatefulComTest ctor" << endl;
  }

  ~StatefulComTest()
  {
    cout << "In StatefulComTest dtor" << endl;
  }

  Test *suite()
  {
    TestSuite *testSuite = new TestSuite( "StatefulComTest" );
    testSuite->addTest( new TestCaller< StatefulComTest >( "testCreateInstance", testCreateInstance, *this ) );
    testSuite->addTest( new TestCaller< StatefulComTest >( "testInitialize", testInitialize, *this ) );
    testSuite->addTest( new TestCaller< StatefulComTest >( "testShutDown", testShutDown, *this ) );

    return testSuite;
  }

  void setUp() 
  {
    cout << "In setup for StatefulComTest" << endl;
  }

  void tearDown() 
  {
    cout << "In tearDown for StatefulComTest" << endl;
  }

  void testCreateInstance() {}
  void testInitialize() {}
  void testShutDown() {}
};