//
//  NSString+EYAttributed.h
//  EY_Utils
//
//  Created by ElaineYin on 2018/5/28.
//


#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

#pragma EYMultipleAttributedProtocol
@protocol EYMultipleAttributedProtocol

@optional

- (void)ey_addAttributeFont:(UIFont *)font range:(NSRange)range;

- (void)ey_addAttributeColor:(UIColor *)color range:(NSRange)range;

- (void)ey_addAttributeLink:(NSString *)linkUrl range:(NSRange)range;

- (void)ey_addAttributeUnderlineWithRange:(NSRange)range;

- (void)ey_addAttributeUnderlineWithColor:(UIColor *)color range:(NSRange)range;

- (void)ey_addAttributeLineSpace:(CGFloat)space range:(NSRange)range;

- (void)ey_addAttribute:(NSAttributedStringKey)name value:(id)value range:(NSRange)range;

@end

#pragma mark - NSString+EYAttributed interface
@interface NSString (EYAttributed)

//修改指定range的字体颜色
- (NSAttributedString *)ey_attributeColor:(UIColor *)color range:(NSRange)range;

//修改指定range的字体
- (NSAttributedString *)ey_attributeFont:(UIFont *)font range:(NSRange)range;

//给指定range添加下划线
- (NSAttributedString *)ey_attributeUnderline:(NSRange)range;

//自定义
- (NSAttributedString *)ey_attributeName:(NSAttributedStringKey)name value:(id)value range:(NSRange)range;

//添加多种attribute
/*
 使用eg：
 、、、
 NSString *text = @"盼望着，盼望着，东风来了，春天的脚步近了。\n一切都像刚睡醒的样子，欣欣然张开了眼。山朗润起来了，水涨起来了，太阳的脸红起来了。\n小草偷偷地从土地里钻出来，嫩嫩的，绿绿的。园子里，田野里，瞧去，一大片一大片满是的。坐着，躺着，打两个滚，踢几脚球，赛几趟跑，捉几回迷藏。风轻悄悄的，草软绵绵的。";
 NSAttributedString *attributedString = [text ey_multipleAttribute:^(id<EYMultipleAttributedProtocol> format) {
 [format ey_addAttributeFont:[UIFont boldSystemFontOfSize:14] range:NSMakeRange(0, 5)];
 [format ey_addAttributeUnderlineWithColor:[UIColor greenColor] range:NSMakeRange(6, 5)];
 [format ey_addAttributeLink:@"https://www.baidu.com" range:NSMakeRange(15, 5)];
 [format ey_addAttributeLineSpace:6 range:NSMakeRange(25, 10)];
 }];
 、、、
 */
- (NSAttributedString *)ey_multipleAttribute:(void (^)(id<EYMultipleAttributedProtocol> format))block;

@end

NS_ASSUME_NONNULL_END
