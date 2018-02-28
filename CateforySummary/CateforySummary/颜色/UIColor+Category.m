/********************************************************************
 文件名称 : UIColor.h 文件
 作 者   :
 创建时间 : 2012-00-00
 文件描述 : UIColor扩展类
 *********************************************************************/

#import "UIColor+Category.h"

@implementation UIColor (Category)

/**
 *  获取颜色值，RGB使用255值，方法内部除以255
 *
 *  @param redValue   red
 *  @param greenValue green
 *  @param blueValue  blue
 *
 *  @return UIColor
 */
+ (instancetype)colorWithRedValue:(CGFloat)redValue
                       greenValue:(CGFloat)greenValue
                        blueValue:(CGFloat)blueValue
                            alpha:(CGFloat)alpha
{
    UIColor *color = [UIColor colorWithRed:redValue/255.0
                                     green:greenValue/255.0
                                      blue:blueValue/255.0
                                     alpha:alpha];
    return color;
}

/**
 *  颜色字符串转化为颜色 eg:0XFF0000
 *
 *  @param stringToConvert 颜色字符串eg:0XFF0000
 *
 *  @return UIColor
 */
+ (UIColor *) hexStringToColor: (NSString *) stringToConvert
{
    NSString *cString = [[stringToConvert stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    // String should be 6 or 8 characters
    
    if ([cString length] < 6) return [UIColor blackColor];
    // strip 0X if it appears
    if ([cString hasPrefix:@"0X"]) cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"#"]) cString = [cString substringFromIndex:1];
    if ([cString length] != 6) return [UIColor blackColor];
    
    // Separate into r, g, b substrings
    
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString *rString = [cString substringWithRange:range];
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    // Scan values
    unsigned int r, g, b;
    
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f)
                           green:((float) g / 255.0f)
                            blue:((float) b / 255.0f)
                           alpha:1.0f];
}

+ (UIColor *)ColorWIthhOX:(NSString *)oxValue
{
    return nil;
}


@end
