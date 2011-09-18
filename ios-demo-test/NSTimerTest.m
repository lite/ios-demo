#import <GHUnitIOS/GHUnit.h> // ios
//#import <GHUnit/GHUnit.h>	// osx

@interface NSTimerTest : GHTestCase {
}
@end

@implementation NSTimerTest

-(void)myMethod:(NSTimer*)timer {
	NSLog(@"scheduledTimerWithTimeInterval: %@", [timer userInfo]);

    [timer invalidate];
}

- (void)testScheduledTimerWithTimeInterval {
    NSString *string = [NSString stringWithFormat:@"%d", arc4random()];
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(myMethod) userInfo:string repeats:NO];
}

@end