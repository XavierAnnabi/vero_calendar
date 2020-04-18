#import "VeroCalendarPlugin.h"
#if __has_include(<vero_calendar/vero_calendar-Swift.h>)
#import <vero_calendar/vero_calendar-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "vero_calendar-Swift.h"
#endif

@implementation VeroCalendarPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftVeroCalendarPlugin registerWithRegistrar:registrar];
}
@end
