#import <GHUnitIOS/GHUnit.h> // ios
//#import <GHUnit/GHUnit.h>	// osx

@interface ExampleTest : GHTestCase { }
@end

@implementation ExampleTest

- (BOOL)shouldRunOnMainThread {
    // By default NO, but if you have a UI test or test dependent on running on the main thread return YES.
    // Also an async test that calls back on the main thread, you'll probably want to return YES.
    return NO;
}

- (void)setUpClass {
    // Run at start of all tests in the class
}

- (void)tearDownClass {
    // Run at end of all tests in the class
}

- (void)setUp {
    // Run before each test method
}

- (void)tearDown {
    // Run after each test method
}   

- (void)testFoo {       
    NSString *a = @"foo";
    GHTestLog(@"I can log to the GHUnit test console: %@", a);
    
    // Assert a is not NULL, with no custom error description
    GHAssertNotNULL(a, nil);
    
    // Assert equal objects, add custom error description
    NSString *b = @"bar";
    GHAssertEqualObjects(a, b, @"A custom error message. a should be equal to: %@.", b);
}

- (void)testBar {
    // Another test
}

- (void)testReturnTrue {
    // Another test
    GHAssertTrue(true, @"should pass test");
}

- (void)testReturnFalse {
    // Another test
    GHAssertTrue(false, @"should failed test");
}

@end
