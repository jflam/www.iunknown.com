// Hello, World in CppUnit

#include "stdafx.h"

#include <cppunit\TestCaller.h>
#include <cppunit\TestSuite.h>
#include <cppunit\TestCase.h>
#include <cppunit\TextTestResult.h>

#include <iostream>
#include <string>

using namespace std;
using namespace CppUnit;

class Employee
{
private:
  string      _name;

public:
  Employee( const char *name )
  {
    _name = name;
  }
  ~Employee() {}

  string GetName() const { return _name; }
};

class EmployeeTestCase : public TestCase
{
private:
  Employee*     _employee;

public:
  EmployeeTestCase( string name ) : TestCase( name ), _employee( 0 ) {}
  ~EmployeeTestCase() {}

  void setUp()
  {
    _employee = new Employee( "John" );
  }

  void tearDown()
  {
    if( _employee )
      delete _employee;
  }

  virtual void registerTests( TestSuite *suite ) 
  {
    suite->addTest( new TestCaller< EmployeeTestCase >( "testName", testName, *this ) );
    suite->addTest( new TestCaller< EmployeeTestCase >( "testNameFail", testNameFail, *this ) );
  }

  void testName()
  {
    CPPUNIT_ASSERT_EQUAL( _employee->GetName(), string( "John" ) );
  }

  void testNameFail()
  {
    CPPUNIT_ASSERT_EQUAL( _employee->GetName(), string( "Bill" ) );
  }
};

int _tmain(int argc, _TCHAR* argv[])
{
  TestSuite suite;

  EmployeeTestCase employeeTestCase( "Employee1" );
  employeeTestCase.registerTests( &suite );

  TextTestResult res;
  suite.run( &res );
  cout << res << endl;

  return 0;
}

