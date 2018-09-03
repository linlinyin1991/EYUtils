//
//  NSDateFormatter+EYAdditions.m
//  EY_Utils
//
//  Created by yin linlin on 2018/7/19.
//

#import "NSDateFormatter+EYAdditions.h"

@implementation NSDateFormatter (EYAdditions)

static NSDateFormatter * formatter = nil;
+ (nullable NSDateFormatter *)sharedInstance {
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        if (!formatter) {
            formatter = [[self.class alloc] init];
            formatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
        }
    });
    return formatter;
}

+ (nullable NSDateFormatter *)ey_dateFormatter:(NSString *)formatter {
    if (!(formatter && formatter.length > 0)) {
        return nil;
    }
    NSDateFormatter *dateFormatter = [self sharedInstance];
    dateFormatter.dateFormat = formatter;
    return dateFormatter;
}

+ (nullable NSDateFormatter *)ey_defaultFormatter {
    return [self ey_dateFormatter:@"yyyy-MM-dd HH:mm:ss"];
    
}

@end
