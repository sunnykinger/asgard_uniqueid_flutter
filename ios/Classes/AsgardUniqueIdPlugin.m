#import "AsgardUniqueIdPlugin.h"
#if __has_include(<asgard_unique_id/asgard_unique_id-Swift.h>)
#import <asgard_unique_id/asgard_unique_id-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "asgard_unique_id-Swift.h"
#endif

@implementation AsgardUniqueIdPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAsgardUniqueIdPlugin registerWithRegistrar:registrar];
}
@end
