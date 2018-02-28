/********************************************************************
 文件名称 : NSString+PwdSafe.h 文件
 作 者   :  Neo
 创建时间 : 2015-4-15
 文件描述 : 用户密码安全性检测类
 *********************************************************************/

#import <Foundation/Foundation.h>

@interface NSString_PwdSafe : NSObject

+ (NSString *)judgePasswordStrength:(NSString*) _password;

@end
