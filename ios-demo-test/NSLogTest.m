#import <GHUnitIOS/GHUnit.h> // ios
//#import <GHUnit/GHUnit.h>	// osx

@interface NSLogTest : GHTestCase {
}
@end

@implementation NSLogTest

- (void)testNSLog {
    NSLog(@"0x%x, %d", 30, 30);
    NSLog(@"log: %@ ", "string");
    NSLog(@"log: %f ", 10.1);
    NSLog(@"log: %i ", 100);
}

@end
