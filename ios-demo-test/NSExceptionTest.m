#import <GHUnitIOS/GHUnit.h> // ios
//#import <GHUnit/GHUnit.h>	// osx

@interface NSExceptionTest : GHTestCase {
}
@end

@implementation NSExceptionTest

- (void)testExceptionWithName {
    NSString *name = @"DemoException";
    NSString *reason = @"A test exception";
    @try {
        [[NSException exceptionWithName:name reason:reason userInfo:nil] raise];
    } @catch (NSException *exception) {
        NSLog(@"excetion has been catched.");
        GHAssertEqualStrings(name, [exception name], @"exception name is not expected.");
        GHAssertEqualStrings(reason, [exception reason], @"exception reason is not expected.");
    } @finally {
        NSLog(@"finally.");
    }
}

- (void)testRaiseNSException {
    NSString *name = @"DemoException";
    NSString *format = @"Invalid value %d";
    @try {
        [NSException raise:name format:format, 404];
    } @catch (NSException *exception) {
        GHAssertEqualStrings(name, exception.name, @"exception name is not expected.");
        GHAssertEqualStrings(@"Invalid value 404", exception.reason, @"exception reason is not expected.");
    }
}


@end
