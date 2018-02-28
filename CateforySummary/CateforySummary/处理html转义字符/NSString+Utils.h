//
//  NSString+Utils.h
//  txclient
//
//  Created by Steven Cheung on 15/8/7.
//  Copyright (c) 2015年 tx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Utils)

//  处理html转义字符
- (NSString *)decodeHtmlString;

@end
