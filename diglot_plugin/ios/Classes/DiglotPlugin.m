#import "DiglotPlugin.h"
#import <diglot_plugin/diglot_plugin-Swift.h>

@implementation DiglotPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftDiglotPlugin registerWithRegistrar:registrar];
}
@end
