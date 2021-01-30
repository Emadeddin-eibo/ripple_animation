#import "RippleAnimationPlugin.h"
#if __has_include(<ripple_animation/ripple_animation-Swift.h>)
#import <ripple_animation/ripple_animation-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "ripple_animation-Swift.h"
#endif

@implementation RippleAnimationPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftRippleAnimationPlugin registerWithRegistrar:registrar];
}
@end
