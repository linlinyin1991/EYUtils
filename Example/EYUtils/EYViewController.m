//
//  EYViewController.m
//  EYUtils
//
//  Created by yinll on 09/03/2018.
//  Copyright (c) 2018 yinll. All rights reserved.
//

#import "EYViewController.h"
#import <EYUtils/EYUtils.h>

@interface EYViewController ()

@end

@implementation EYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor ey_colorWithHex:0x654754 alpha:0.9];
    [self stringDemo];
    [self numberCategoryTest];
    [self dateTest];
}

- (void)dateTest {
    NSDate *today = [NSDate date];
    //获取日期所在年、月、日
    NSInteger year = today.ey_year;
    NSInteger month = today.ey_month;
    NSInteger day = today.ey_day;
    NSLog(@"today: year = %ld, month = %ld, day = %ld",year, month, day);//today: year = 2018, month = 7, day = 20
    
    //去年今天
    NSDate *lastyearToday = [today ey_dateByYears:-1];
    NSLog(@"去年今天:%@",[lastyearToday ey_formatDDDescription]); //去年今天:2017-07-20
    
    //毫秒时间戳
    NSDate *lastWeek = [today ey_dateByWeeks:-1];
    NSTimeInterval timeInterval = [lastWeek timeIntervalSince1970] * 1000;
    //转换
    NSString * dateStr = [NSDate ey_formatDDWithTimeStamp:[NSNumber numberWithDouble:timeInterval]];
    NSLog(@"上周：%@",dateStr); //上周：2018-07-13
    
}

- (void)stringDemo {
    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(0, 60, kScreenWidth, 100)];
    [self.view addSubview:textView];
    
    NSString *string = @"盼望着，盼望着，东风来了，春天的脚步近了。\n一切都像刚睡醒的样子，欣欣然张开了眼。山朗润起来了，水涨起来了，太阳的脸红起来了。";
    //    NSAttributedString *attributedString = [string ey_attributeUnderline:NSMakeRange(10, 20)];
    /// 属性字符串demo
    NSAttributedString *attributedString = [string ey_multipleAttribute:^(id<EYMultipleAttributedProtocol> format) {
        ///修改指定range的字体
        [format ey_addAttributeFont:[UIFont boldSystemFontOfSize:14] range:NSMakeRange(0, 5)];
        ///给指定区域添加下划线
        [format ey_addAttributeUnderlineWithColor:[UIColor greenColor] range:NSMakeRange(6, 5)];
        ///添加链接
        [format ey_addAttributeLink:@"https://www.baidu.com" range:NSMakeRange(15, 5)];
        ///修改指定区域的行间隔
        [format ey_addAttributeLineSpace:6 range:NSMakeRange(15, 30)];
        ///修改指定区域字体颜色
        [format ey_addAttributeColor:[UIColor ey_colorWithHexString:@"ABCDBB"] range:NSMakeRange(40, 10)];
    }];
    textView.attributedText = attributedString;
    
    
    
    ///规则验证
    BOOL isMobileNumber = [NSString isEffectiveMobileNumber:@"18790567348"];
    if (isMobileNumber) {
        NSLog(@"手机号验证成功");
    }
}

- (void)numberCategoryTest {
    NSNumber *number1 = @918593000.457;
    //科学计数法字符串
    NSString *defaultFormat = [number1 defaultCurrencyYuanFormat];//918,593,000.457
    
    //返回最大单位，最多保留两位小数
    NSString *currencyFormat = [number1 currencyYuanFormat];//9.19亿
    
    //转中文大写
    NSString *capitalizedFormat = [number1 capitalizedYuanFormat];//玖亿壹仟捌佰伍拾玖万叁仟点肆伍柒元
    NSLog(@"\nnumber = %@\ndefaultFormat = %@\ncurrencyFormat = %@\ncapitalizedFormat = %@",number1, defaultFormat, currencyFormat, capitalizedFormat);
    
    NSNumber *number2 = @765287;
    defaultFormat = [number2 defaultCurrencyYuanFormat];
    currencyFormat = [number2 currencyYuanFormat];
    capitalizedFormat = [number2 capitalizedYuanFormat];
    NSLog(@"\nnumber = %@\ndefaultFormat = %@\ncurrencyFormat = %@\ncapitalizedFormat = %@",number2, defaultFormat, currencyFormat, capitalizedFormat);
    
    //科学计数字符串转NSNumber
    NSNumber *amount = [NSNumber numberWithAmount:@"65,287.98"];//65287.98
    NSLog(@"%@",amount);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
