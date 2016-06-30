#import <Foundation/Foundation.h>
#import <Analytics/SEGIntegrationFactory.h>


@interface SEGBugsnagIntegrationFactory : NSObject <SEGIntegrationFactory>

+ (instancetype)instance;

@end
