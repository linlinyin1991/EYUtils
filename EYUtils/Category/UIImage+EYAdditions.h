//
//  UIImage+EYAdditions.h
//  EY_Utils
//
//  Created by EY on 2018/06/02.
//
//

#import <UIKit/UIKit.h>

@interface UIImage (XYAdd)

- (UIImage * )imageByRoundCornerRadius:(CGFloat)radius;
- (UIImage * )imageByRoundCornerRadius:(CGFloat)radius borderWidth:(CGFloat)borderWidth borderColor:(UIColor * )borderColor;
- (UIImage * )imageByRoundCornerRadius:(CGFloat)radius corners:(UIRectCorner)corners borderWidth:(CGFloat)borderWidth borderColor:(UIColor * )borderColor borderLineJoin:(CGLineJoin)borderLineJoin;


/**
 *  根据UIColor获取UIImage
 *
 *  @param color UIColor
 *
 *  @return 1x1 point size image
 */
+ (UIImage *)imageWithColor:(UIColor *)color;

/**
 *  根据UIColor/CGSize获取UIImage
 *
 *  @param color The color.
 *  @param size  New image's type.
 *
 *  @return size image
 */
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;


- (UIImage*)imageAddCornerWithRadius:(CGFloat)radius andSize:(CGSize)size;



@end
