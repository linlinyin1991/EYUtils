//
//  NSNumber+EYFormat.h
//  EY_Utils
//
//  Created by yin linlin on 2018/7/19.
//

#import <Foundation/Foundation.h>

@interface NSNumber (EYFormat)

/// NSNumer类型转科学计数法字符串
- (NSString *)defaultCurrencyYuanFormat;

/// 金额转换：返回最大单位，最多保留两位小数
- (NSString *)currencyYuanFormat;

/// 金额转换：NSNumber类型转中文大写
- (NSString *)capitalizedYuanFormat;

/// 科学计数字符串转NSNumber
+ (NSNumber *)numberWithAmount:(NSString *)string;

@end
