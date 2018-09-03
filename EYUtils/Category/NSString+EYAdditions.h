//
//  NSString+EYAdditions.h
//  EY_Utils
//
//  Created by ElaineYin on 2018/5/28.
//

#import <Foundation/Foundation.h>

@interface NSString (EYAdditions)

@property (readonly) NSUInteger ey_charCount; /*标准字符数量*/

// 处理nil或者NULL的string 返回@""
#define HandleNilSting(string) (([string isKindOfClass:[NSNull class]] || !string) ? @"" : string)

// 处理为nil或者NULL的 string 或者NSNumber类型
#define HandleNilObjectToString [NSString stringWithFormat:@"%@", HandleNilSting(string)]

- (NSString *)ey_removeAllSpace; /*删除字符串中所有空格*/

- (BOOL)ey_containsCharacterInSet:(NSCharacterSet *)searchSet;

- (BOOL)ey_containsString:(NSString *)searchString options:(unsigned int)mask;

- (BOOL)ey_containsString:(NSString *)searchString;


#pragma mark - Class Methods

+ (BOOL)ey_isEmptyString:(NSString *)string;


/// 处理nil或者NULL的string 返回@""
+ (NSString *)ey_nonNilString:(NSString *)string;

/// 转换为string类型
+ (NSString *)ey_stringValue:(id)object;

@end
