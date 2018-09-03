//
//  UIColor+EYAdditions.h
//  EY_Utils
//
//  Created by ElaineYin on 2018/5/28.
//

#import <UIKit/UIKit.h>

@interface UIColor (EYAdditions)
NS_ASSUME_NONNULL_BEGIN

/**
 *  @abstract           16进制颜色值转化颜色对象
 *
 *  @param hexString          16进制颜色值的字符串
 *
 *  @return             UIColor对象
 */
+ (nullable UIColor *)ey_colorWithHexString:(NSString *)hexString;

/**
 *  @abstract           16进制颜色值转化颜色对象
 *
 *  @param hex          16进制颜色值,0xffffff
 *
 *  @return             UIColor对象
 */
+ (nullable UIColor *)ey_colorWithHex:(NSInteger)hex;

/**
 *  @abstract           16进制颜色值转化颜色对象
 *
 *  @param hex          16进制颜色值
 *  @param alpha        透明度(0-1)
 *
 *  @return             UIColor对象
 */
+ (nullable UIColor *)ey_colorWithHex:(NSInteger)hex alpha:(CGFloat)alpha;

/**
 *  @abstract           rgb颜色值转化颜色对象
 *
 *  @param r            红色值(0-255)
 *  @param g            绿色值(0-255)
 *  @param b            蓝色值(0-255)
 *
 *  @return             UIColor对象
 */
+ (nullable UIColor *)ey_colorWithRed:(NSInteger)r green:(NSInteger)g blue:(NSInteger)b;

NS_ASSUME_NONNULL_END
@end
