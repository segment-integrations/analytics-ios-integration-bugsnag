#import <Foundation/Foundation.h>
#import <Analytics/SEGIntegration.h>


@interface SEGBugsnagIntegration : NSObject <SEGIntegration>

- (id)initWithSettings:(NSDictionary *)settings;

@end
