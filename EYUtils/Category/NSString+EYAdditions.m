//
//  NSString+EYAdditions.m
//  EY_Utils
//
//  Created by ElaineYin on 2018/5/28.
//

#import "NSString+EYAdditions.h"

@implementation NSString (EYAdditions)

//标准字符数量
- (NSUInteger)ey_charCount {
    NSUInteger strlength = 0;
    char * p = (char *)[self cStringUsingEncoding:NSUnicodeStringEncoding];
    for (NSUInteger i = 0 ;i < [self lengthOfBytesUsingEncoding:NSUnicodeStringEncoding]; i ++) {
        if (* p) {
            strlength ++;
        }
        p ++;
    }
    return strlength;
}

- (NSString *)ey_removeAllSpace {
    return [self stringByReplacingOccurrencesOfString:@" " withString:@""];
}

// Returns YES if the string is nil or equal to @""
+ (BOOL)ey_isEmptyString:(NSString *)string; {
    NSString *str = string;
    if (str == nil || str == NULL) {
        return YES;
    }
    if ([str isKindOfClass:[NSNull class]]) {
        return YES;
    }
    if ([[str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length]==0) {
        return YES;
    }
    
    return NO;
}


+ (NSString *)ey_nonNilString:(NSString *)string {
    return (([string isKindOfClass:[NSNull class]] || !string) ? @"" : string);
}

+ (NSString *)ey_stringValue:(id)object {
    return [NSString stringWithFormat:@"%@", [self ey_nonNilString:object]];
}

- (BOOL)ey_containsCharacterInSet:(NSCharacterSet *)searchSet; {
    NSRange characterRange = [self rangeOfCharacterFromSet:searchSet];
    return characterRange.length != 0;
}

- (BOOL)ey_containsString:(NSString *)searchString options:(unsigned int)mask; {
    return !searchString || [searchString length] == 0 || [self rangeOfString:searchString options:mask].length > 0;
}

- (BOOL)ey_containsString:(NSString *)searchString; {
    return !searchString || [searchString length] == 0 || [self rangeOfString:searchString].length > 0;
}


@end
