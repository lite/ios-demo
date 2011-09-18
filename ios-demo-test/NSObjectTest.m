#import <GHUnitIOS/GHUnit.h> // ios
//#import <GHUnit/GHUnit.h>	// osx

@interface NSString (MyTest)
@end

@implementation NSString (MyTest)

- (void)logIt:(NSString *) string {
    NSString *lowerString = [string lowercaseString];
    NSLog(lowerString);
    return lowerString;
}

@end

@interface NSObjectTest : GHTestCase {
}
@end

@implementation NSObjectTest

- (void)testRespondsToSelector {
    NSString *str = @"HELLO everyOne";
    SEL sel = @selector(logIt);
    NSString *lower = (([str respondsToSelector:sel]) ? @"YES" : @"NO");
    NSLog(@"Responds to lowercaseString: %@", lower);
    if ([str respondsToSelector:sel])
        NSLog(@"lowercaseString is: %@", [str logIt]);
}

@end
