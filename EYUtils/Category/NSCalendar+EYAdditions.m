//
//  NSCalendar+EYAdditions.m
//  EY_Utils
//
//  Created by yin linlin on 2018/7/19.
//

#import "NSCalendar+EYAdditions.h"

@implementation NSCalendar (EYAdditions)

static NSCalendar * calendar = nil;
+ (NSCalendar *)sharedInstance {
    static dispatch_once_t once;
    dispatch_once(&once, ^{if (!calendar) {
        calendar = [self.class currentCalendar];
    }});
    return calendar;
}

@end
