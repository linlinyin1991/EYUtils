### 1. 介绍
EYUtils 是EY系列的基础功能组件，目前主要包括常用对象的Category、正则验证、常用宏定义等

### 2. 用法示例

##### 2.1 属性字符串
```
/// 属性字符串demo
///单一属性
NSAttributedString *attributedString = [string ey_attributeUnderline:NSMakeRange(10, 20)];

///多种属性
NSAttributedString *attributedString = [string ey_multipleAttribute:^(id<EYMultipleAttributedProtocol> format) {
///修改指定range的字体
[format ey_addAttributeFont:[UIFont boldSystemFontOfSize:14] range:NSMakeRange(0, 5)];
///给指定区域添加下划线
[format ey_addAttributeUnderlineWithColor:[UIColor greenColor] range:NSMakeRange(6, 5)];
}];

...

```

##### 2.2 规则验证
```
//是否是手机号
BOOL isMobileNumber = [NSString isEffectiveMobileNumber:@"18790567348"];
...
```

##### 2.3 金额转换
```
NSNumber *number1 = @918593000.457;
//科学计数法字符串
NSString *defaultFormat = [number1 defaultCurrencyYuanFormat];//918,593,000.457

//返回最大单位，最多保留两位小数
NSString *currencyFormat = [number1 currencyYuanFormat];//9.19亿

//转中文大写
NSString *capitalizedFormat = [number1 capitalizedYuanFormat];//玖亿壹仟捌佰伍拾玖万叁仟点肆伍柒元
//科学计数字符串转NSNumber
NSNumber *amount = [NSNumber numberWithAmount:@"65,287.98"];//65287.98
```

##### 2.4 时间转换
```
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
```
其他功能请直接查看文件

### 3. 安装

**系统要求：该项目最低支持 `iOS 8.0` 和 `Xcode 9.2`。**

##### CocoaPods安装

1. 在 Podfile 中添加  `pod 'EYUtils, :git => 'https://github.com/linlinyin1991/ELUtility.git'`。
2. 执行 `pod install` 或 `pod update`。
3. 导入 \<EYUtils/EYUtils.h\>。



