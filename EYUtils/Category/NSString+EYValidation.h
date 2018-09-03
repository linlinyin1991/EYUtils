//
//  NSString+EYValidation.h
//  EY_Utils
//
//  Created by yin linlin on 2018/7/16.
//

#import <Foundation/Foundation.h>

@interface NSString (EYValidation)

/**
 *  @abstract           判断邮箱是否有效
 *  @param value        等待验证的字符串
 *  @return             判断结果
 */
+ (BOOL)isEffectiveEmail:(NSString *)value;                  /*@return 是否是有效的邮箱*/

/**
 *  @abstract           判断手机号是否有效
 *  @param value        等待验证的字符串
 *  @return             判断结果
 */
+ (BOOL)isEffectiveMobileNumber:(NSString *)value;           /*@return 是否是有效的手机号*/

/**
 *  @abstract           判断是否全部都是数字
 *  @param value        等待验证的字符串
 *  @return             判断结果
 */
+ (BOOL)isAllDigitalCharacters:(NSString*)value;             /*@return 是否全部是数字*/

/**
 *  @abstract           判断是否全是英文
 *  @param value        等待验证的字符串
 *  @return             判断结果
 */
+ (BOOL)isAllEnglishCharacters:(NSString *)value;            /*@return 是否全部是英文字母*/

/**
 *  @abstract           判断是否全部都是汉字
 *  @param value        等待验证的字符串
 *  @return             判断结果
 */
+ (BOOL)isAllChineseCharacters:(NSString *)value;            /*@return 是否全部是汉字*/

@end
