//
//  UIView+EYLayer.m
//  EY_Utils
//
//  Created by yin linlin on 2018/6/11.
//

#import "UIView+EYLayer.h"

@implementation UIView (EYLayer)

- (void)ey_setCornerRadius:(CGFloat)cornerRadius {
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:UIRectCornerAllCorners cornerRadii:CGSizeMake(cornerRadius,cornerRadius)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.bounds;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
}



@end
