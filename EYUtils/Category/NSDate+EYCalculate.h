//
//  NSDate+EYCalculate.h
//  EY_Utils
//
//  Created by yin linlin on 2018/7/20.
//

#import <Foundation/Foundation.h>

@interface NSDate (EYCalculate)

#pragma mark - **********获取日期差值**********
/// return 与date相差年数,只返回整数差值*/
- (NSInteger)ey_yearsByDate:(NSDate *)date;

/// return 与date相差月数,只返回整数差值*/
- (NSInteger)ey_monthsByDate:(NSDate *)date;

/// return 与date相差周数,只返回整数差值*/
- (NSInteger)ey_weeksByDate:(NSDate *)date;

/// return 与date相差天数,只返回整数差值*/
- (NSInteger)ey_daysByDate:(NSDate *)date;

/// return 与date相差小时数,只返回整数差值*/
- (NSInteger)ey_hoursByDate:(NSDate *)date;

/// return 与date相差分钟数,只返回整数差值*/
- (NSInteger)ey_minutesByDate:(NSDate *)date;

/// return 与date相差秒数,只返回整数差值*/
- (NSInteger)ey_secondsByDate:(NSDate *)date;


#pragma mark - **********获取新日期**********

/// @return (+-years)年的日期
- (NSDate *)ey_dateByYears:(NSInteger)years;

/// return (+-months)月的日期
- (NSDate *)ey_dateByMonths:(NSInteger)months;

/// return (+-weeks)周的日期
- (NSDate *)ey_dateByWeeks:(NSInteger)weeks;

/// return (+-days)天的日期
- (NSDate *)ey_dateByDays:(NSInteger)days;

/// return (+-hours)小时的日期
- (NSDate *)ey_dateByHours:(NSInteger)hours;

/// return (+-minutes)分钟的日期
- (NSDate *)ey_dateByMinute:(NSInteger)minutes;

/// return (+-seconds)秒的日期
- (NSDate *)ey_dateBySecond:(NSInteger)seconds;


@end
