/********************************************************************
 文件名称 : NSString+Validate.h 文件
 作   者 : Joe
 创建时间 : 15/9/10
 文件描述 : 类
 *********************************************************************/

#import <Foundation/Foundation.h>

@interface NSString (Validate)

/**
 *  身份证号
 *
 *  @param identityCard identityCard description
 *
 *  @return return value description
 */
+ (BOOL) validateIdentityCard: (NSString *)identityCard;

/**
 *  昵称
 *
 *  @param nickname nickname description
 *
 *  @return return value description
 */
+ (BOOL) validateNickname:(NSString *)nickname;

/**
 *  密码
 *
 *  @param passWord passWord description
 *
 *  @return return value description
 */
+ (BOOL) validatePassword:(NSString *)passWord;

/**
 *  用户名
 *
 *  @param name name description
 *
 *  @return return value description
 */
+ (BOOL) validateUserName:(NSString *)name;

/**
 *  车牌号验证
 *
 *  @param carNo carNo description
 *
 *  @return return value description
 */
+ (BOOL) validateCarNo:(NSString *)carNo;

/**
 *  手机号码验证
 *
 *  @param mobile mobile description
 *
 *  @return return value description
 */
+ (BOOL) validateMobile:(NSString *)mobile;

/**
 *  邮箱
 *
 *  @param email email description
 *
 *  @return return value description
 */
+ (BOOL) validateEmail:(NSString *)email;
@end
