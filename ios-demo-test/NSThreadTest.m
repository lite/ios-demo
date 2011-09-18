#import <GHUnitIOS/GHUnit.h> // ios
//#import <GHUnit/GHUnit.h>	// osx

@interface NSThreadTest : GHTestCase {
}
@end

@implementation NSThreadTest

- (void)myMethod {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

    for (int i = 0; i < 3; i++) {
        NSLog(@"thread running...%d", arc4random());
        [NSThread sleepForTimeInterval:1];
    }

    [pool release];
}

- (void)test {
    [self performSelectorOnMainThread:@selector(myMethod) withObject:nil waitUntilDone:true];
    NSLog(@"thread stopped");
}

@end