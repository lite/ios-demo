#import <GHUnitIOS/GHUnit.h> // ios
//#import <GHUnit/GHUnit.h>	// osx

@interface NSPathTest : GHTestCase {
}
@end

@implementation NSPathTest

- (void)testNSSearchPathForDirectoriesInDomains {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(
            NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *fullName = [documentsDirectory stringByAppendingPathComponent:
            [NSString stringWithFormat:@"%@.plist", @"test"]];

    GHTestLog(fullName);
}

- (void)testCurrentDirectoryPath {
    NSFileManager *fileManger = [NSFileManager defaultManager];
    GHTestLog([fileManger currentDirectoryPath]);
}

- (void)testFileExistsAtPath {
//    NSFileManager *fileManger = [NSFileManager defaultManager];
//    if (fileManger) {
//        GHTestLog([fileManger fileExistsAtPath:@"ios-demo-test-Info"] ? "YES" : "NO");
//    }
}

- (void)testPathForResource {
    NSBundle *bundle = [NSBundle mainBundle];
    GHTestLog(@"[bundle bundleIdentifier]: %@", [bundle bundleIdentifier]);
    GHTestLog(@"[bundle bundlePath]: %@", [bundle bundlePath]);
    NSString *fullName = [bundle pathForResource:@"test" ofType:@"plist"];
    GHTestLog(fullName);
    GHTestLog([NSHomeDirectory() stringByAppendingString:@"/Documents/"]);
}

- (void)testDictionaryWithContentsOfFile {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(
            NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectoryPath = [paths objectAtIndex:0];
    NSString *path = [documentsDirectoryPath
            stringByAppendingPathComponent:@"myApp.plist"];
    NSMutableDictionary *plist = [NSDictionary dictionaryWithContentsOfFile:path];
    if (plist) {
        GHTestLog(@"%d", [[plist valueForKey:@"int"] intValue]);
        GHTestLog([plist valueForKey:@"bool"]);

        [plist setValue:@"value" forKey:@"key"];
        [plist writeToFile:path atomically:YES];
    }
}

- (void)testEnumeratorAtPath {
    id importFile;
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSDirectoryEnumerator *dirEnum = [fileManager enumeratorAtPath:@"*.*"];
    while ((importFile =[dirEnum nextObject])) {
        NSLog(@"%@", [importFile pathExtension]);
        NSLog(@"%@", [importFile path]);
    }
}

@end
