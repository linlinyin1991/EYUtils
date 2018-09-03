//
//  NSString+EYValidation.m
//  EY_Utils
//
//  Created by yin linlin on 2018/7/16.
//

#import "NSString+EYValidation.h"

@implementation NSString (EYValidation)

+ (BOOL)isEffectiveEmail:(NSString *)value {
    NSString * regex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{1,5}";
    return [self isValidateRegularExpression:value ByRegex:regex];
}

+ (BOOL)isEffectiveMobileNumber:(NSString *)value {
    NSString * regex = @"^(0|86)?(1)[0-9]{10}$";
    return [self isValidateRegularExpression:value ByRegex:regex];
}

+ (BOOL)isAllDigitalCharacters:(NSString*)value {
    NSString * regex = @"^[0-9]*$";
    return [self isValidateRegularExpression:value ByRegex:regex];
}

+ (BOOL)isAllEnglishCharacters:(NSString *)value {
    NSString * regex = @"^[a-zA-Z]*$";
    return [self isValidateRegularExpression:value ByRegex:regex];
}

+ (BOOL)isAllChineseCharacters:(NSString *)value {
    NSString * regex = @"^[\u4e00-\u9fa5]*$";
    return [self isValidateRegularExpression:value ByRegex:regex];
}

+ (BOOL)isValidateRegularExpression:(NSString *)expression ByRegex:(NSString *)regex {
    NSPredicate * predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    return [predicate evaluateWithObject:expression];
}

@end
