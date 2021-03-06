/********************************************************************
 文件名称 : NSDate.h 文件
 作 者   :
 创建时间 : 2012-00-00
 文件描述 : NSDate扩展类
 *********************************************************************/

#import <Foundation/Foundation.h>

@interface NSDate (Category)



/*********************************************************************
 函数名称 : nowTimeStamp
 函数描述 : 获取当前时间的时间戳
 参数 : N/A
 返回值 : NSString
 *********************************************************************/
+(NSString *)nowTimeStamp;



/*********************************************************************
 函数名称 : nowTimeStrToMillisecond
 函数描述 : 获取当前时间String，精确到毫秒
 参数 : N/A
 返回值 : NSString
 *********************************************************************/
+(NSString *)nowTimeStrToMillisecond;

/*********************************************************************
 函数名称 : obtainYear
 函数描述 : 获取年数
 参数 : N/A
 返回值 : NSInteger
 *********************************************************************/
+(NSInteger)obtainYear:(NSDate *)date;

/*********************************************************************
 函数名称 : obtainMonth
 函数描述 : 获取月数
 参数 : N/A
 返回值 : NSInteger
 *********************************************************************/
+(NSInteger)obtainMonth:(NSDate *)date;

/*********************************************************************
 函数名称 : obtainDay
 函数描述 : 获取日期数
 参数 : N/A
 返回值 : int
 *********************************************************************/
+(NSInteger)obtainDay:(NSDate *)date;

/*********************************************************************
 函数名称 : obtainHouse
 函数描述 : 获取时间小时
 参数 : N/A
 返回值 : int
 *********************************************************************/
+(NSInteger)obtainHouse:(NSDate *)date;

/*********************************************************************
 函数名称 : obtainMinute
 函数描述 : 获取时间分钟
 参数 : N/A
 返回值 : int
 *********************************************************************/
+(NSInteger)obtainMinute:(NSDate *)date;



/*********************************************************************
 函数名称 : obtainWeek
 函数描述 : 得到今天的星期
 参数 : N/A
 返回值 : NSString
 *********************************************************************/
+(NSString *)obtainWeek:(NSDate *)date;

/*********************************************************************
 函数名称 : obtainMonthEnglish
 函数描述 : 得到今天的月份的英文简写
 参数 : N/A
 返回值 : NSString
 *********************************************************************/
+(NSString *)obtainMonthEnglish:(NSDate *)date;



/*********************************************************************
 函数名称 : changeStringToDate
 函数描述 : 传入str，获得nsdate
 参数 :
 dateStr ：dateStr
 返回值 : NSDate
 *********************************************************************/
+(NSDate *)changeStringToDate:(NSString *)dateStr;

/*********************************************************************
 函数名称 : changeStringToDate
 函数描述 : 传入str，获得nsdate
 参数 :
 dateStr ：dateStr
 dateFormat : 时间格式
 返回值 : NSDate
 *********************************************************************/
+(NSDate *)changeStringToDate:(NSString *)dateStr andDateFormat:(NSString *)dateFormat;


/*********************************************************************
 函数名称 : changeDateToString
 函数描述 : 传入date，获得String
 参数 :
 dateStr ：dateStr
 返回值 : NSDate
 *********************************************************************/
+(NSString *)changeDateToString:(NSDate *)date andDateFormat:(NSString *)dateFormat;

/*********************************************************************
 函数名称 : changeStringToString
 函数描述 : 传入dateString，获得String
 返回值 : NSDate
 *********************************************************************/
+(NSString *)changeStringToString:(NSString *)dateString stringDateFormat:(NSString *)stringDateFormat;

/**
 *  判断判断时间是否在判断时间里面(可以等于  day为负表示之前 day为正数表示之后)
 *
 *  @param day             时间
 *  @param standardDay     标准尺时间
 *  @param verificationDay 验证时间
 *
 *  @return Yes:是在时间内 NO：不在时间内
 */
+ (BOOL)isInDays:(int)day
     standardDay:(NSDate *)standardDay
 verificationDay:(NSDate *)verificationDay;

/*********************************************************************
 函数名称 : timeoutInterval:sinceDate:
 函数描述 : 判断是否超时
 参数 : 
 secs ：超时区间
 date : 要判断时间
 返回值 : NSString
 *********************************************************************/
+(BOOL)timeoutInterval:(NSTimeInterval)secs sinceDate:(NSDate *)date;

@end









