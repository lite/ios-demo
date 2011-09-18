#import <GHUnitIOS/GHUnit.h> // ios
//#import <GHUnit/GHUnit.h>	// osx

@interface NSUnitTest : GHTestCase {
}
@end

@implementation NSUnitTest

//- (void)failWithException:(NSException *)exception {
//    NSLog(@"fail with exception. %@", [exception reason]);
//}

- (void)testGHAssertTrue {
    GHAssertTrue(true, @"test assertTrue will failed." );
}

- (void)testGHAssertFalse {
    GHAssertFalse(false, @"test assertFalse");
}

- (void)testGHTestLog {
    GHTestLog(@"Log with a test with the GHTestLog(...) for test specific logging.");
}

- (void)testGHAssertNotNull {
    NSString *notNull = [NSString stringWithString:@"not null"];
    GHAssertNotNULL(notNull, @"it should be not null.");
}

- (void)testGHAssertEqualObjects {
    NSNumber *object = [NSNumber numberWithLong:100];
    NSNumber *equal = [NSNumber numberWithDouble:100.0];
    GHAssertEqualObjects(equal, object, @"A custom error message. obj should be equal to: %@.", object);
}

- (void)testGHAssertNotEqualObjects {
    NSString *object = [NSString stringWithString:@"object"];
    NSString *notEqual = [NSString stringWithString:@"not equal"];
    GHAssertNotEqualObjects(notEqual, object, @"A custom error message. obj should be not equal to: %@.", object);
}

- (void)testGHAssertGreaterThan {
    NSNumber *count= [NSNumber numberWithLong:1];
    GHAssertGreaterThan((int)count, 0, @"it should not an empty array.");
}

@end
