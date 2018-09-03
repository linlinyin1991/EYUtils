//
//  NSCalendar+EYAdditions.h
//  EY_Utils
//
//  Created by yin linlin on 2018/7/19.
//

#import <Foundation/Foundation.h>

@interface NSCalendar (EYAdditions)

/**
 * 频繁调用[NSCalendar currentCalendar]会极大的消耗系资源，因此选择单例.
 */
+ (nullable NSCalendar *)sharedInstance;/*singleton: [NSCalendar currentCalendar]*/

@end
