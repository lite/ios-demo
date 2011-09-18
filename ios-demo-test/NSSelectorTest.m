#import <GHUnitIOS/GHUnit.h> // ios
//#import <GHUnit/GHUnit.h>	// osx

@interface NSSelectorTest : GHTestCase {
}
@end

@implementation NSSelectorTest

- (void) lotIt:(NSString *) string{
    NSLog(@"%@", string);
}

- (void)testMakeObjectsPerformSelector {
    NSString *method = NSStringFromSelector(@selector(logIt:));
    NSLog(@"%@", method);
    GHTestLog(@"it should be print all objects in array with selector.");
}

@end