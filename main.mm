#import "AppDelegate.h" // AppDelegate

int main(int argc, char *argv[]) {
  @autoreleasepool {
    NSString *principalClassName = nil; // UIApplication is assumed
    return UIApplicationMain(
        argc,
        argv,
        principalClassName,
        NSStringFromClass([AppDelegate class])
    );
  }
}
