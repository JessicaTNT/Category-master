/********************************************************************
 文件名称 : NSString+MD5.h 文件
 作 者   :  Neo
 创建时间 : 2015-4-15
 文件描述 : md5加解密处理类
 *********************************************************************/

#import <Foundation/Foundation.h>

@interface NSString (MD5)

+ (NSString *)md5:(NSString *)str;
+ (NSString *)md5HexDigest:(NSString*)input;
@end
