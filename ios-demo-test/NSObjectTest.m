#import <GHUnitIOS/GHUnit.h> // ios
//#import <GHUnit/GHUnit.h>	// osx

@interface NSObjectTest : GHTestCase {
}
@end

@implementation NSObjectTest

- (void)testRespondsToSelector {
    NSString *str = @"HELLO everyOne";
    SEL sel = @selector(lowercaseString);
    NSLog(@"Responds to lowercaseString: %@", (([str respondsToSelector:sel]) ? @"YES" : @"NO"));
    if ([str respondsToSelector:sel])
        NSLog(@"lowercaseString is: %@", [str lowercaseString]);
}

@end
