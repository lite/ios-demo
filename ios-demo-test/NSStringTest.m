#import <GHUnitIOS/GHUnit.h> // ios
//#import <GHUnit/GHUnit.h>	// osx

@interface NSStringTest : GHTestCase {
}
@end

@implementation NSStringTest

- (void)testStringWithString {
    NSString *result = [NSString stringWithFormat:@"0x%x, %d", 30, 30];
    GHAssertEqualStrings(@"", result, @"it should be formated string.");
}

- (void)testInitWithData {
    NSString *input = @"hello";
    NSData *d = [input dataUsingEncoding:NSUTF8StringEncoding];
    NSString *output = [[NSString alloc] initWithData:d encoding:NSUTF8StringEncoding];
    GHAssertEqualStrings(output, input, @"it should be same string.");
    [output release];
}

- (void)testStringWithFormat {
//    int x = 11;
//    NSString *string = [NSString stringWithFormat:@"%03i", x];
//    NSString *string1 = [NSString stringWithFormat:@"%+5i", x];
//    NSString *string2 = [NSString stringWithFormat:@"%+05i", x];
}
@end
