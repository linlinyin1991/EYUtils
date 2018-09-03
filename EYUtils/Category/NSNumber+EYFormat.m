//
//  NSNumber+EYFormat.m
//  EY_Utils
//
//  Created by yin linlin on 2018/7/19.
//

#import "NSNumber+EYFormat.h"

@implementation NSNumber (EYFormat)

- (NSString *)defaultCurrencyYuanFormat {
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    formatter.numberStyle = NSNumberFormatterDecimalStyle;
    return [formatter stringFromNumber:self];
}

- (NSString *)currencyYuanFormat {
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    formatter.maximumFractionDigits = 2;

    NSUInteger number = [self unsignedIntegerValue];
    if (number / 100000000 > 0) {
        CGFloat resultNum = number / 100000000.0;
        return [NSString stringWithFormat:@"%0.2f亿",resultNum];
    } else if (number / 10000 > 0) {
        formatter.multiplier = @0.0001;
        formatter.positiveSuffix = @"万";
    } else {
        formatter.multiplier = @1.0f;
    }
    return [formatter stringFromNumber:self];
}

- (NSString *)capitalizedYuanFormat {
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    formatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"zh_CN"];
    formatter.numberStyle = kCFNumberFormatterSpellOutStyle;
    NSString *result = [formatter stringFromNumber:self];
    result = [result stringByReplacingOccurrencesOfString:@"一" withString:@"壹"];
    result = [result stringByReplacingOccurrencesOfString:@"二" withString:@"贰"];
    result = [result stringByReplacingOccurrencesOfString:@"三" withString:@"叁"];
    result = [result stringByReplacingOccurrencesOfString:@"四" withString:@"肆"];
    result = [result stringByReplacingOccurrencesOfString:@"五" withString:@"伍"];
    result = [result stringByReplacingOccurrencesOfString:@"六" withString:@"陆"];
    result = [result stringByReplacingOccurrencesOfString:@"七" withString:@"柒"];
    result = [result stringByReplacingOccurrencesOfString:@"八" withString:@"捌"];
    result = [result stringByReplacingOccurrencesOfString:@"九" withString:@"玖"];
    result = [result stringByReplacingOccurrencesOfString:@"十" withString:@"拾"];
    result = [result stringByReplacingOccurrencesOfString:@"百" withString:@"佰"];
    result = [result stringByReplacingOccurrencesOfString:@"千" withString:@"仟"];
    result = [NSString stringWithFormat:@"%@元", result];
    return result;
}

+ (NSNumber *)numberWithAmount:(NSString *)string {
    
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    formatter.numberStyle = NSNumberFormatterDecimalStyle;
    return [formatter numberFromString:string];
}

@end
