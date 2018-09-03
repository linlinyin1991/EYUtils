//
//  UIView+EYLayout.h
//  EY_Utils
//
//  Created by ElaineYin on 2018/5/28.
//

#import <UIKit/UIKit.h>

@interface UIView (EYLayout)

@property(nonatomic) CGFloat left;       /*x*/
@property(nonatomic) CGFloat right;      /*x+width*/
@property(nonatomic) CGFloat top;        /*y*/
@property(nonatomic) CGFloat bottom;     /*y+height*/
@property(nonatomic) CGFloat width;      /*width*/
@property(nonatomic) CGFloat height;     /*height*/
@property(nonatomic) CGPoint origin;     /*origin*/
@property(nonatomic) CGSize  size;       /*size*/
@property(nonatomic) CGFloat centerX;    /*centerX*/
@property(nonatomic) CGFloat centerY;    /*centerY*/

@end
