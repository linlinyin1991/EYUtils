//
//  NSDate+EYCalculate.m
//  EY_Utils
//
//  Created by yin linlin on 2018/7/20.
//

#import "NSDate+EYCalculate.h"
#import "NSCalendar+EYAdditions.h"

@implementation NSDate (EYCalculate)

#pragma mark - **********获取日期差值**********
- (NSInteger)ey_yearsByDate:(NSDate *)date {
    if (!date) {return NSIntegerMin;}
    return [[NSCalendar sharedInstance] components:NSCalendarUnitYear fromDate:date toDate:self options:0].year;
}

- (NSInteger)ey_monthsByDate:(NSDate *)date {
    if (!date) {return NSIntegerMin;}
    return [[NSCalendar sharedInstance] components:NSCalendarUnitMonth fromDate:date toDate:self options:0].month;
}

- (NSInteger)ey_weeksByDate:(NSDate *)date {
    if (!date) {return NSIntegerMin;}
    return [[NSCalendar sharedInstance] components:NSCalendarUnitWeekOfYear fromDate:date toDate:self options:0].weekOfYear;
}

- (NSInteger)ey_daysByDate:(NSDate *)date {
    if (!date) {return NSIntegerMin;}
    return [[NSCalendar sharedInstance] components:NSCalendarUnitDay fromDate:date toDate:self options:0].day;
}

- (NSInteger)ey_hoursByDate:(NSDate *)date {
    if (!date) {return NSIntegerMin;}
    return [[NSCalendar sharedInstance] components:NSCalendarUnitHour fromDate:date toDate:self options:0].hour;
}

- (NSInteger)ey_minutesByDate:(NSDate *)date {
    if (!date) {return NSIntegerMin;}
    return [[NSCalendar sharedInstance] components:NSCalendarUnitMinute fromDate:date toDate:self options:0].minute;
}

- (NSInteger)ey_secondsByDate:(NSDate *)date {
    if (!date) {return NSIntegerMin;}
    return [[NSCalendar sharedInstance] components:NSCalendarUnitSecond fromDate:date toDate:self options:0].second;
}


#pragma mark - **********获取新日期**********
- (NSDate *)ey_dateByYears:(NSInteger)years {
    NSDateComponents * component = [[NSDateComponents alloc] init];
    component.year = years;
    return [[NSCalendar sharedInstance] dateByAddingComponents:component toDate:self options:0];
}
- (NSDate *)ey_dateByMonths:(NSInteger)months {
    NSDateComponents * component = [[NSDateComponents alloc] init];
    component.month = months;
    return [[NSCalendar sharedInstance] dateByAddingComponents:component toDate:self options:0];
}

- (NSDate *)ey_dateByWeeks:(NSInteger)weeks {
    NSDateComponents * component = [[NSDateComponents alloc] init];
    component.weekOfYear = weeks;
    return [[NSCalendar sharedInstance] dateByAddingComponents:component toDate:self options:0];
}

- (NSDate *)ey_dateByDays:(NSInteger)days {
    NSDateComponents * component = [[NSDateComponents alloc] init];
    component.day = days;
    return [[NSCalendar sharedInstance] dateByAddingComponents:component toDate:self options:0];
}

- (NSDate *)ey_dateByHours:(NSInteger)hours {
    NSDateComponents * component = [[NSDateComponents alloc] init];
    component.hour = hours;
    return [[NSCalendar sharedInstance] dateByAddingComponents:component toDate:self options:0];
}

- (NSDate *)ey_dateByMinute:(NSInteger)minutes {
    NSDateComponents * component = [[NSDateComponents alloc] init];
    component.minute = minutes;
    return [[NSCalendar sharedInstance] dateByAddingComponents:component toDate:self options:0];
}
- (NSDate *)ey_dateBySecond:(NSInteger)seconds {
    NSDateComponents * component = [[NSDateComponents alloc] init];
    component.second = seconds;
    return [[NSCalendar sharedInstance] dateByAddingComponents:component toDate:self options:0];
}

@end
