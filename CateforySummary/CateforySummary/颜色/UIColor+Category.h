/********************************************************************
 文件名称 : UIColor.h 文件
 作 者   :
 创建时间 : 2012-00-00
 文件描述 : UIColor扩展类
 *********************************************************************/

#import <UIKit/UIKit.h>

@interface UIColor (Category)

/**
 *  获取颜色值，RGB使用255值，方法内部除以255
 *
 *  @param redValue   red
 *  @param greenValue green
 *  @param blueValue  blue
 *  @param alpha      alpha
 *
 *  @return UIColor
 */
+ (instancetype)colorWithRedValue:(CGFloat)redValue
                       greenValue:(CGFloat)greenValue
                        blueValue:(CGFloat)blueValue
                            alpha:(CGFloat)alpha;


/**
 *  颜色字符串转化为颜色 eg:0XFF0000
 *
 *  @param stringToConvert 颜色字符串eg:0XFF0000
 *
 *  @return UIColor
 */
+ (UIColor *) hexStringToColor: (NSString *) stringToConvert;

+ (UIColor *)ColorWIthhOX:(NSString *)oxValue;

@end
