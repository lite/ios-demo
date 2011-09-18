#import <GHUnitIOS/GHUnit.h> // ios
//#import <GHUnit/GHUnit.h>	// osx

@interface NSArrayTest : GHTestCase {
}
@end

@implementation NSArrayTest

- (void)testArrayWithObject {
    NSArray *array = [NSArray arrayWithObject:@"foo"];
    GHAssertGreaterThan((int) array.count, 0, @"it should not an empty array.");
}

- (void)testArrayWithObjects {
    NSArray *array = [NSArray arrayWithObjects:@"foo", @"bar", nil];
    GHAssertEquals((int) array.count, 2, @"it should be array with some objects.");
}

- (void)testArrayWithArray {
    NSArray *array = [NSArray arrayWithObjects:@"foo", @"bar", nil];
    NSArray *anotherArray = [NSArray arrayWithArray:array];

    GHAssertEquals(anotherArray.count, array.count, @"it should be same arrays.");
}

- (void)testObjectAtIndex {
    NSArray *array = [NSArray arrayWithObjects:@"foo", @"bar", nil];
    NSUInteger object_id = [array indexOfObject:@"bar"];
    id object = [array objectAtIndex:object_id];
    id lastObject = [array lastObject];
    GHAssertEquals(object, lastObject, @"it should be same object.");
}

- (void)testArrayIterator {
    NSArray *array = [NSArray arrayWithObjects:@"foo", @"bar", nil];
    for (NSString *string in array) {
        NSLog(string);
    }
    GHTestLog(@"it should be print all objects in array.");
}

- (void)testSortedArrayUsingSelector {
    NSArray *array = [NSArray arrayWithObjects:@"foo", @"bar", nil];
    NSArray *sortedArray = [array sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)];
    for (NSString *string in sortedArray) {
        NSLog(string);
    }
    GHTestLog(@"it should be print all objects in array by sorted.");
}

- (void)testMakeObjectsPerformSelector {
    NSArray *array = [NSArray arrayWithObjects:@"foo", @"bar", nil];
    [array makeObjectsPerformSelector:@selector(uppercaseString)];
    GHTestLog(@"it should be print all objects in array with uppercase.");
}

@end
