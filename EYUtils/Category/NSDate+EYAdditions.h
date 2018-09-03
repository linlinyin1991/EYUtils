//
//  NSDate+EYAdditions.h
//  EY_Utils
//
//  Created by ElaineYin on 2018/5/28.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (EYAdditions)

#pragma mark - **********属性**********

@property(nonatomic, readonly) NSInteger ey_year;           /*日期所在年份*/
@property(nonatomic, readonly) NSInteger ey_month;          /*日期所在月份*/
@property(nonatomic, readonly) NSInteger ey_day;            /*日*/
@property(nonatomic, readonly) NSInteger ey_hour;           /*时*/
@property(nonatomic, readonly) NSInteger ey_minute;         /*分*/
@property(nonatomic, readonly) NSInteger ey_second;         /*秒*/

#pragma mark - **********初始化**********
+ (nullable NSDate *)ey_dateFromString:(NSString *)dateStr format:(NSString *)format;

+ (nullable NSDate *)ey_dateWithYear:(NSUInteger)year month:(NSUInteger)month day:(NSUInteger)day;

@end

NS_ASSUME_NONNULL_END
