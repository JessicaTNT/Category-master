/********************************************************************
 文件名称 : NSString+ContainChinese.h 文件
 作 者   :  Neo
 创建时间 : 2015-4-15
 文件描述 : NSString检测是否包含中文字符类
 *********************************************************************/

#import <Foundation/Foundation.h>

@interface NSString (ContainChinese)

+ (BOOL)containChinese:(NSString *)str;

@end
