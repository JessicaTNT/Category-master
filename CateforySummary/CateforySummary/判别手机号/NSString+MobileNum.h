/********************************************************************
 文件名称 : NSString+MobileNum.h 文件
 作 者   :  Neo
 创建时间 : 2015-4-15
 文件描述 : 手机号码判断类
 *********************************************************************/


#import <Foundation/Foundation.h>

@interface NSString (MobileNum)

- (BOOL)isMobileNumber;

- (Boolean )isValidCertiCode;
@end
