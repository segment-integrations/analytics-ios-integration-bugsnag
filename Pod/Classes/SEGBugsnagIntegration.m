#import "SEGBugsnagIntegration.h"
#import <Bugsnag/Bugsnag.h>
#import <Analytics/SEGAnalyticsUtils.h>
#import <Analytics/SEGAnalytics.h>


@implementation SEGBugsnagIntegration

- (id)initWithSettings:(NSDictionary *)settings
{
    if (self = [super init]) {
        NSString *apiKey = [settings objectForKey:@"apiKey"];
        [Bugsnag startBugsnagWithApiKey:apiKey];
    }
    return self;
}

- (void)identify:(SEGIdentifyPayload *)payload
{
    NSString *name = [payload.traits objectForKey:@"name"];
    NSString *email = [payload.traits objectForKey:@"email"];
    [[Bugsnag configuration] setUser:payload.userId withName:name andEmail:email];

    for (NSString *key in payload.traits) {
        NSString *value = [payload.traits objectForKey:key];
        [Bugsnag addAttribute:key withValue:value toTabWithName:@"user"];
    }
}

- (void)screen:(NSString *)screenTitle properties:(NSDictionary *)properties options:(NSDictionary *)optionsoptions
{
    [[Bugsnag configuration] setContext:screenTitle];
}

@end
