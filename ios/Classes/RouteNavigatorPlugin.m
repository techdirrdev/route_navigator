#import "RouteNavigatorPlugin.h"
#if __has_include(<route_navigator/route_navigator-Swift.h>)
#import <route_navigator/route_navigator-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "route_navigator-Swift.h"
#endif

@implementation RouteNavigatorPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftRouteNavigatorPlugin registerWithRegistrar:registrar];
}
@end
