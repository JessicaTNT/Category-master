/********************************************************************
 文件名称 : NSDate.h 文件
 作 者   :
 创建时间 : 2012-00-00
 文件描述 : NSDate扩展类
 *********************************************************************/

#import "NSDate+Category.h"

@implementation NSDate (Category)


/*********************************************************************
 函数名称 : nowTimeStamp
 函数描述 : 获取当前时间的时间戳
 参数 : N/A
 返回值 : NSString
 *********************************************************************/
+(NSString *)nowTimeStamp
{
    NSDate *datenow = [NSDate date];
    NSString *timeSp = [[NSString alloc]initWithFormat:@"%ld", (long)[datenow timeIntervalSince1970]];
    return timeSp;
}

/*********************************************************************
 函数名称 : nowTimeStrToMillisecond
 函数描述 : 获取当前时间String，精确到毫秒
 参数 : N/A
 返回值 : NSString
 *********************************************************************/
+(NSString *)nowTimeStrToMillisecond
{
    NSDateFormatter *formatter=[[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterShortStyle];
    [formatter setDateFormat:@"YYYY:MM:dd HH:mm:ss:SSSS"];
    NSString *time=[formatter stringFromDate:[NSDate date]];
    return time;
}

/*********************************************************************
 函数名称 : obtainYear
 函数描述 : 获取年数
 参数 : N/A
 返回值 : NSInteger
 *********************************************************************/
+(NSInteger)obtainYear:(NSDate *)date
{
    if (date)
    {
        NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSInteger unitFlags = NSCalendarUnitYear | NSCalendarUnitMonth |
        NSCalendarUnitDay | NSCalendarUnitWeekday | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
        NSDateComponents *comps = [calendar components:unitFlags fromDate:date];
        NSInteger year = [comps year];
        return year;
    }
    return 2014;
}

/*********************************************************************
 函数名称 : obtainMonth
 函数描述 : 获取月数
 参数 : N/A
 返回值 : NSInteger
 *********************************************************************/
+(NSInteger)obtainMonth:(NSDate *)date
{
    if (date)
    {
        NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSInteger unitFlags = NSCalendarUnitYear | NSCalendarUnitMonth |
        NSCalendarUnitDay | NSCalendarUnitWeekday | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
        NSDateComponents *comps = [calendar components:unitFlags fromDate:date];
        NSInteger month = [comps month];
        return month;
    }
    return 0;
}

/*********************************************************************
 函数名称 : obtainDay
 函数描述 : 获取日期数
 参数 : N/A
 返回值 : int
 *********************************************************************/
+(NSInteger)obtainDay:(NSDate *)date
{
    if (date)
    {
        NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSInteger unitFlags = NSCalendarUnitYear | NSCalendarUnitMonth |
        NSCalendarUnitDay | NSCalendarUnitWeekday | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
        NSDateComponents *comps = [calendar components:unitFlags fromDate:date];
        NSInteger day = [comps day];
        return day;
    }
    return 0;
}

/*********************************************************************
 函数名称 : obtainHouse
 函数描述 : 获取时间小时
 参数 : N/A
 返回值 : int
 *********************************************************************/
+(NSInteger)obtainHouse:(NSDate *)date
{
    if (date)
    {
        NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSInteger unitFlags = NSCalendarUnitYear | NSCalendarUnitMonth |
        NSCalendarUnitDay | NSCalendarUnitWeekday | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
        NSDateComponents *comps = [calendar components:unitFlags fromDate:date];
        NSInteger day = [comps hour];
        return day;
    }
    return 0;
}

/*********************************************************************
 函数名称 : obtainMinute
 函数描述 : 获取时间分钟
 参数 : N/A
 返回值 : int
 *********************************************************************/
+(NSInteger)obtainMinute:(NSDate *)date
{
    if (date)
    {
        NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSInteger unitFlags = NSCalendarUnitYear | NSCalendarUnitMonth |
        NSCalendarUnitDay | NSCalendarUnitWeekday | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
        NSDateComponents *comps = [calendar components:unitFlags fromDate:date];
        NSInteger day = [comps minute];
        return day;
    }
    return 0;
}



/*********************************************************************
 函数名称 : obtainWeek
 函数描述 : 得到今天的星期
 参数 : N/A
 返回值 : NSString
 *********************************************************************/
+(NSString *)obtainWeek:(NSDate *)date
{
    if (date)
    {
        NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSInteger unitFlags = NSCalendarUnitYear | NSCalendarUnitMonth |
        NSCalendarUnitDay | NSCalendarUnitWeekday | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
        NSDateComponents *comps = [calendar components:unitFlags fromDate:date];
        NSArray *weekArr = [[NSArray alloc]initWithObjects:@"SUN",@"MON",@"TUE",@"WED",@"THU",@"FRI",@"SAT",nil];
        //                        NSLocalizedString(@"LOCA_HOME_WEEK_0", @"星期日"),
        //                        NSLocalizedString(@"LOCA_HOME_WEEK_1", @"星期一"),
        //                        NSLocalizedString(@"LOCA_HOME_WEEK_2", @"星期二"),
        //                        NSLocalizedString(@"LOCA_HOME_WEEK_3", @"星期三"),
        //                        NSLocalizedString(@"LOCA_HOME_WEEK_4", @"星期四"),
        //                        NSLocalizedString(@"LOCA_HOME_WEEK_5", @"星期五"),
        //                        NSLocalizedString(@"LOCA_HOME_WEEK_6", @"星期六"), nil];;
        NSInteger week = [comps weekday] -1;
        NSString *weekStr = [[NSString alloc]initWithString:[weekArr objectAtIndex:week]];
        return weekStr;
    }
    return @"";
}

/*********************************************************************
 函数名称 : obtainMonthEnglish
 函数描述 : 得到今天的月份的英文简写
 参数 : N/A
 返回值 : NSString
 *********************************************************************/
+(NSString *)obtainMonthEnglish:(NSDate *)date
{
    if (date)
    {
        NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSInteger unitFlags = NSCalendarUnitYear | NSCalendarUnitMonth |
        NSCalendarUnitDay | NSCalendarUnitWeekday | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
        NSDateComponents *comps = [calendar components:unitFlags fromDate:date];
        NSArray *monthArr = [[NSArray alloc]initWithObjects:
                             @"Jan",@"Feb",@"Mar",@"Apr",@"May",@"Jun",
                             @"Jul",@"Aug",@"Sep",@"Oct",@"Nov",@"Dec", nil];
        NSInteger month = [comps month] -1;
        NSString *monthStr = [[NSString alloc]initWithString:[monthArr objectAtIndex:month]];
        return monthStr;
    }
    return @"jan";
}




/*********************************************************************
 函数名称 : changeStringToDate
 函数描述 : 传入str，获得nsdate
 参数 :
 dateStr ：dateStr
 返回值 : NSDate
 *********************************************************************/
+(NSDate *)changeStringToDate:(NSString *)dateStr
{
    if (dateStr)
    {
        //创建时间格式化实例对象
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        //设置时间格式
        [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
        NSDate *date = [dateFormatter dateFromString:dateStr];
        return date;
    }
    return nil;
}


/*********************************************************************
 函数名称 : changeStringToDate
 函数描述 : 传入str，获得nsdate
 注释 : 时间格式 @"yyyy:MM:dd HH:mm:ss:SSSS"];
 参数 :
 dateStr ：dateStr
 dateFormat : 时间格式
 返回值 : NSDate
 *********************************************************************/
+(NSDate *)changeStringToDate:(NSString *)dateStr andDateFormat:(NSString *)dateFormat
{
    //创建时间格式化实例对象
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    //设置时间格式
    [dateFormatter setDateFormat:dateFormat];
    NSDate *date = [dateFormatter dateFromString:dateStr];
    return date;
}


/*********************************************************************
 函数名称 : changeDateToString
 函数描述 : 传入date，获得String
 参数 :
 dateStr ：dateStr
 返回值 : NSDate
 *********************************************************************/
+(NSString *)changeDateToString:(NSDate *)date andDateFormat:(NSString *)dateFormat
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:dateFormat];
    NSString *dateStr = [dateFormatter stringFromDate:date];
    return dateStr;
}

+(NSString *)changeStringToString:(NSString *)dateString stringDateFormat:(NSString *)stringDateFormat
{
    return [NSDate changeDateToString:[self changeStringToDate:dateString] andDateFormat:stringDateFormat];
}

/**
 *  判断时间是否在判断时间里面(可以等于)
 *
 *  @param day             时间
 *  @param standardDay     标准尺时间
 *  @param verificationDay 验证时间
 *
 *  @return Yes:是在时间内 NO：不在时间内
 */
+ (BOOL)isInDays:(int)day
     standardDay:(NSDate *)standardDay
 verificationDay:(NSDate *)verificationDay
{
    BOOL result = NO;
    if (standardDay && verificationDay)
    {
        NSTimeInterval timeInterval = [verificationDay timeIntervalSinceDate:standardDay];
        NSTimeInterval disTimeInterval = day*24*60*60;
        if (day >= 0)
        {
            if (timeInterval <= disTimeInterval   && timeInterval >= 0)
            {
                return YES;
            }
        }
        else
        {
            if (timeInterval >=  disTimeInterval  && timeInterval <= 0)
            {
                return YES;
            }
        }
    }
    return result;
}

/*********************************************************************
 函数名称 : timeoutInterval:sinceDate:
 函数描述 : 判断是否超时
 参数 :
 secs ：超时区间
 date : 要判断时间
 返回值 : NSString
 *********************************************************************/
+(BOOL)timeoutInterval:(NSTimeInterval)secs sinceDate:(NSDate *)date
{
    NSTimeInterval timeInterval = [date timeIntervalSinceNow];
    timeInterval = 0 - timeInterval;
    return timeInterval > secs;
}

@end




