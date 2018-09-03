//
//  NSString+EYAttributed.m
//  EY_Utils
//
//  Created by ElaineYin on 2018/5/28.
//

#import "NSString+EYAttributed.h"

@interface EYMultipleAttributeFormat : NSObject<EYMultipleAttributedProtocol>

@property (nonatomic, copy) NSString *baseString;
@property (nonatomic, strong) NSMutableAttributedString *attributedString;

- (id)initWithString:(NSString *)string;

@end

#pragma mark - NSString+EYAttributed implementation
@implementation NSString (EYAttributed)

- (NSAttributedString *)ey_attributeColor:(UIColor *)color range:(NSRange)range {
    return [self ey_attributeName:NSForegroundColorAttributeName value:color range:range];
}

- (NSAttributedString *)ey_attributeFont:(UIFont *)font range:(NSRange)range {
    return [self ey_attributeName:NSFontAttributeName value:font range:range];
}

- (NSAttributedString *)ey_attributeUnderline:(NSRange)range {
    return [self ey_attributeName:NSUnderlineStyleAttributeName value:[NSNumber numberWithInteger:NSUnderlineStyleSingle] range:range];
}

- (NSAttributedString *)ey_attributeName:(NSAttributedStringKey)name value:(id)value range:(NSRange)range {
    return [[NSAttributedString alloc] initWithString:self attributes:@{name : value}];
}

- (NSAttributedString *)ey_multipleAttribute:(void (^)(id<EYMultipleAttributedProtocol> format))block {
    __block EYMultipleAttributeFormat *multipleAttribute = [[EYMultipleAttributeFormat alloc] initWithString:self];
    if (block) {
        block(multipleAttribute);
    }
    return multipleAttribute.attributedString;
}


@end


#pragma mark - EYMultipleAttributeFormat implementation

@implementation EYMultipleAttributeFormat
- (id)initWithString:(NSString *)string {
    if (self = [super init]) {
        self.baseString = string;
    }
    return self;
}

- (NSMutableAttributedString *)attributedString {
    if (!_attributedString) {
        _attributedString = [[NSMutableAttributedString alloc] initWithString:self.baseString];
    }
    return _attributedString;
}

#pragma mark EYMultipleAttributedProtocol

- (void)ey_addAttributeFont:(UIFont *)font range:(NSRange)range {
    [self.attributedString addAttribute:NSFontAttributeName value:font range:range];
}

- (void)ey_addAttributeColor:(UIColor *)color range:(NSRange)range {
    [self.attributedString addAttribute:NSForegroundColorAttributeName value:color range:range];
}

- (void)ey_addAttributeLink:(NSString *)linkUrl range:(NSRange)range {
    [self.attributedString addAttribute:NSLinkAttributeName value:[NSURL URLWithString:linkUrl] range:range];
}

- (void)ey_addAttributeUnderlineWithRange:(NSRange)range {
    [self.attributedString addAttribute:NSUnderlineStyleAttributeName value:[NSNumber numberWithInteger:NSUnderlineStyleSingle] range:range];
}

- (void)ey_addAttributeUnderlineWithColor:(UIColor *)color range:(NSRange)range {
    [self ey_addAttributeUnderlineWithRange:range];
    [self ey_addAttributeColor:color range:range];
}

- (void)ey_addAttributeLineSpace:(CGFloat)space range:(NSRange)range {
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.lineSpacing = space;
    [self.attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:range];
}

- (void)ey_addAttribute:(NSAttributedStringKey)name value:(id)value range:(NSRange)range {
    [self.attributedString addAttribute:name value:value range:range];
}

@end

