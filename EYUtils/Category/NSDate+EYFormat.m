//
//  NSDate+EYFormat.m
//  EY_Utils
//
//  Created by yin linlin on 2018/7/20.
//

#import "NSDate+EYFormat.h"
#import "NSDateFormatter+EYAdditions.h"

@implementation NSDate (EYFormat)

/// 日期转换为yyyy-MM-dd格式的字符串
- (NSString *)ey_formatDDDescription {
    return [self ey_descriptionWithFormat:@"yyyy-MM-dd"];
}

/// 日期转换为yyyy-MM-dd HH:mm格式的字符串
- (NSString *)ey_formatMMDescription {
    return [self ey_descriptionWithFormat:@"yyyy-MM-dd HH:mm"];
}

/// 日期转换为yyyy-MM-dd HH:mm:ss格式的字符串
- (NSString *)ey_formatSSDescription {
    return [self ey_descriptionWithFormat:@"yyyy-MM-dd HH:mm:ss"];
}

/// 日期转换为指定格式的字符串
- (NSString *)ey_descriptionWithFormat:(NSString *)format {
    return [[NSDateFormatter ey_dateFormatter:format] stringFromDate:self];
}

#pragma mark - 时间戳转换
// 时间戳转换为yyyy-MM-dd格式的日期字符串
+ (NSString *)ey_formatDDWithTimeStamp:(NSNumber *)timeStamp {
    return [self ey_dateFormat:@"yyyy-MM-dd" timeStamp:timeStamp];
}

// 时间戳转换为yyyy-MM-dd HH:mm格式的日期字符串
+ (NSString *)ey_formatMMWithTimeStamp:(NSNumber *)timeStamp {
    return [self ey_dateFormat:@"yyyy-MM-dd HH:mm" timeStamp:timeStamp];
}

// 时间戳转换为yyyy-MM-dd HH:mm:ss格式的日期字符串
+ (NSString *)ey_formatSSWithTimeStamp:(NSNumber *)timeStamp {
    return [self ey_dateFormat:@"yyyy-MM-dd HH:mm:ss" timeStamp:timeStamp];
}

+ (NSString *)ey_dateFormat:(NSString *)format timeStamp:(NSNumber *)timeStamp {
    if (!timeStamp) {
        return nil;
    }
    
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:[timeStamp longLongValue] / 1000];
    return [[NSDateFormatter ey_dateFormatter:format] stringFromDate:date];
}

@end
