/********************************************************************
 文件名称 : NSString+ContainChinese.h 文件
 作 者   :  Neo
 创建时间 : 2015-4-15
 文件描述 : NSString检测是否包含中文字符类
 *********************************************************************/

#import "NSString+ContainChinese.h" 

@implementation NSString (ContainChinese)

+ (BOOL)containChinese:(NSString *)str
{
    //UTF8编码：汉字占3个字节，英文字符占1个字节
    
    NSUInteger length = [str length];
    
    for (int i=0; i<length; ++i)
    {
        NSRange range = NSMakeRange(i, 1);
        NSString *subString = [str substringWithRange:range];
        const char *cString = [subString UTF8String];
        if (strlen(cString) == 3)
        {
            return YES;
        }
    }
    return NO;
}

@end
