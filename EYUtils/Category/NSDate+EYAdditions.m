//
//  NSDate+EYAdditions.m
//  EY_Utils
//
//  Created by ElaineYin on 2018/5/28.
//

#import "NSDate+EYAdditions.h"
#import "NSCalendar+EYAdditions.h"
#import "NSDateFormatter+EYAdditions.h"

#ifndef EYDateFormatter
#define EYDateFormatter(format) [NSDateFormatter ey_dateFormatter:format]
#endif

@interface NSCalendar (EYAddCalendar)
/**
 * 频繁调用[NSCalendar currentCalendar]会极大的消耗系资源，因此选择单例.
 */
+ (nullable NSCalendar *)sharedInstance;/*singleton: [NSCalendar currentCalendar]*/

@end

@interface NSDateFormatter (EYAddDateFormatter)
/**
 * 当NSString对象与NSDate对象之间频繁相互转化时，如果每次都初始化NSDateFormatter对象,
 * 系统开销会非常大，容易造成卡顿，因此选择单例.
 */
+ (nullable NSDateFormatter *)ey_defaultFormatter;/*yyyy-MM-dd HH:mm:ss*/
+ (nullable NSDateFormatter *)ey_dateFormatter:(NSString *)formatter;

@end




@implementation NSDate (EYAdditions)

#pragma mark - **********初始化**********
+ (nullable instancetype)ey_dateFromString:(NSString *)dateStr format:(NSString *)format {
    return [EYDateFormatter(format) dateFromString:dateStr];
}

+ (nullable NSDate*)ey_dateWithYear:(NSUInteger)year month:(NSUInteger)month day:(NSUInteger)day {
    NSDateComponents *components = [[NSDateComponents alloc] init];
    components.year = year;
    components.month = month;
    components.day = day;
    return [[NSCalendar sharedInstance] dateFromComponents:components];
}

#pragma mark - **********属性**********
- (NSInteger)ey_year {
    return [self ey_dateComponent:NSCalendarUnitYear].year;
}

- (NSInteger)ey_month {
    return [self ey_dateComponent:NSCalendarUnitMonth].month;
}

- (NSInteger)ey_day {
    return [self ey_dateComponent:NSCalendarUnitDay].day;
}

- (NSInteger)ey_hour {
    return [self ey_dateComponent:NSCalendarUnitHour].hour;
}

- (NSInteger)ey_minute {
    return [self ey_dateComponent:NSCalendarUnitMinute].minute;
}

- (NSInteger)ey_second {
    return [self ey_dateComponent:NSCalendarUnitSecond].second;
}

- (NSDateComponents *)ey_dateComponent:(NSCalendarUnit)unitFlags {
    return [[NSCalendar sharedInstance] components:unitFlags fromDate:self];
}





@end

