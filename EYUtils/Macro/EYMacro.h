//
//  EYMacro.h
//  EY_Utils
//
//  Created by yin linlin on 2018/6/7.
//

#ifndef EYMacro_h
#define EYMacro_h

// 手机类型的适配

#define IS_IPHONE4S ([UIScreen mainScreen].bounds.size.height == 480.0)

#define IS_IPHONE5 ([UIScreen mainScreen].bounds.size.height == 568.0)

#define IS_IPHONE_BASE ([UIScreen mainScreen].bounds.size.height == 667.0)

#define IS_IPHONE_PLUS ([UIScreen mainScreen].bounds.size.height == 736.0)

#define IS_IPHONEX ([UIScreen mainScreen].bounds.size.height == 812.0)

#define IS_IPHONE  ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)

#define IS_IPHONE_WIDTH_320  ([UIScreen mainScreen].bounds.size.width == 320.0)
#define IS_IPHONE_WIDTH_375  ([UIScreen mainScreen].bounds.size.width == 375.0)
#define IS_IPHONE_WIDTH_414  ([UIScreen mainScreen].bounds.size.width == 414.0)




//APP版本
#define kVersion       [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"]
#define kVersionBuild  [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"]
#define kbundleId      [[NSBundle mainBundle] bundleIdentifier]
#define kAppName [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleDisplayName"]

// 按屏幕比例 (布局使用)
#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height

#define kScaleWidth KScreenWidth / 375
#define kScaleHeight KScreenHeight / 667

// keyWindow
#define kKeyWindow      [UIApplication sharedApplication].keyWindow


// 系统bar的高度
#define kStatusBarHeight [[UIApplication sharedApplication] statusBarFrame].size.height

#define kNavigationBarHeight (44)

#define kTabBarHeight (IS_IPHONEX ? 83 : 49)

#define kTopHeight (kStatusBarHeight + kNavigationBarHeight)

// 弱引用
#define kWeadSelf __weak typeof(self) weakSelf = self;

#define  kAdjustsScrollViewInsets_NO(scrollView,vc)\
do { \
_Pragma("clang diagnostic push") \
_Pragma("clang diagnostic ignored \"-Warc-performSelector-leaks\"") \
if ([UIScrollView instancesRespondToSelector:NSSelectorFromString(@"setContentInsetAdjustmentBehavior:")]) {\
[scrollView   performSelector:NSSelectorFromString(@"setContentInsetAdjustmentBehavior:") withObject:@(2)];\
} else {\
vc.automaticallyAdjustsScrollViewInsets = NO;\
}\
_Pragma("clang diagnostic pop") \
} while (0)


#endif /* EYMacro_h */
