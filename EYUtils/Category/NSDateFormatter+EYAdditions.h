//
//  NSDateFormatter+EYAdditions.h
//  EY_Utils
//
//  Created by yin linlin on 2018/7/19.
//

#import <Foundation/Foundation.h>

@interface NSDateFormatter (EYAdditions)

/**
 * 当NSString对象与NSDate对象之间频繁相互转化时，如果每次都初始化NSDateFormatter对象,
 * 系统开销会非常大，容易造成卡顿，因此选择单例.
 */
+ (nullable NSDateFormatter *)ey_defaultFormatter;/*yyyy-MM-dd HH:mm:ss*/
+ (nullable NSDateFormatter *)ey_dateFormatter:(nonnull NSString *)formatter;

@end
