//
//  NSDate+EYFormat.h
//  EY_Utils
//
//  Created by yin linlin on 2018/7/20.
//

#import <Foundation/Foundation.h>

@interface NSDate (EYFormat)

#pragma mark - 日期转换
/// 日期转换为yyyy-MM-dd格式的字符串
- (NSString *)ey_formatDDDescription;

/// 日期转换为yyyy-MM-dd HH:mm格式的字符串
- (NSString *)ey_formatMMDescription;

/// 日期转换为yyyy-MM-dd HH:mm:ss格式的字符串
- (NSString *)ey_formatSSDescription;

/// 日期转换为指定格式的字符串
- (NSString *)ey_descriptionWithFormat:(NSString *)format;

#pragma mark - 时间戳格式转换
/// 毫秒时间戳转换为yyyy-MM-dd格式的日期字符串
+ (NSString *)ey_formatDDWithTimeStamp:(NSNumber *)timeStamp;

/// 毫秒时间戳转换为yyyy-MM-dd HH:mm格式的日期字符串
+ (NSString *)ey_formatMMWithTimeStamp:(NSNumber *)timeStamp;

/// 毫秒时间戳转换为yyyy-MM-dd HH:mm:ss格式的日期字符串
+ (NSString *)ey_formatSSWithTimeStamp:(NSNumber *)timeStamp;

@end
