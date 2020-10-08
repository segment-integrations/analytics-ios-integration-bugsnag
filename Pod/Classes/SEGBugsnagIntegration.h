#import <Foundation/Foundation.h>
#if defined(__has_include) && __has_include(<Analytics/SEGAnalytics.h>)
#import <Analytics/SEGIntegration.h>
#else
#import <Segment/SEGIntegration.h>
#endif


@interface SEGBugsnagIntegration : NSObject <SEGIntegration>

- (id)initWithSettings:(NSDictionary *)settings;

@end
