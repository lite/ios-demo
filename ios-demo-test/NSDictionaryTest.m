#import <GHUnitIOS/GHUnit.h> // ios
//#import <GHUnit/GHUnit.h>	// osx

@interface NSDictionaryTest : GHTestCase {
}
@end

@implementation NSDictionaryTest

- (void)testNSLog {
    NSString *key = @"key";
    NSString *value = @"value";
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    [dict setObject:value forKey:key];
    GHAssertEqualStrings(value, [dict objectForKey:key], @"it should return value.");
    [dict release];
}

@end
