//
//  NSString+Utils.m
//  txclient
//
//  Created by Steven Cheung on 15/8/7.
//  Copyright (c) 2015年 tx. All rights reserved.
//

#import "NSString+Utils.h"

@implementation NSString (Utils)

//  处理html转义字符
- (NSString *)decodeHtmlString
{
    NSString *source = self;
    
    NSString *pattern = @"(&amp;)|(&lt;)|(&gt;)|(&apos;)|(&quot;)|(&nbsp;)|(&copy;)|(&reg;)|(&ensp;)|(&emsp;)|(&times;)|(&divide;)|(&#(\\d+?);)";
    NSRegularExpression *exp = [NSRegularExpression regularExpressionWithPattern:pattern options:NSRegularExpressionCaseInsensitive error:nil];
    NSUInteger count = [exp numberOfMatchesInString:source options:0 range:NSMakeRange(0, source.length)];
    if (count < 1) {
        return source;
    }
    
    NSString *dest = source;
    dest = [dest stringByReplacingOccurrencesOfString:@"&amp;" withString:@"&"];
    dest = [dest stringByReplacingOccurrencesOfString:@"&lt;" withString:@"<"];
    dest = [dest stringByReplacingOccurrencesOfString:@"&gt;" withString:@">"];
    dest = [dest stringByReplacingOccurrencesOfString:@"&apos;" withString:@"\'"];
    dest = [dest stringByReplacingOccurrencesOfString:@"&quot;" withString:@"\""];
    dest = [dest stringByReplacingOccurrencesOfString:@"&nbsp;" withString:@" "];
    dest = [dest stringByReplacingOccurrencesOfString:@"&copy;" withString:@"@"];
    dest = [dest stringByReplacingOccurrencesOfString:@"&reg;" withString:@"?"];
    dest = [dest stringByReplacingOccurrencesOfString:@"&ensp;" withString:@" "];
    dest = [dest stringByReplacingOccurrencesOfString:@"&emsp;" withString:@" "];
    dest = [dest stringByReplacingOccurrencesOfString:@"&times;" withString:@"×"];
    dest = [dest stringByReplacingOccurrencesOfString:@"&divide;" withString:@"÷"];
    
    NSString *regex = @"&#(\\d+?);";
    NSRegularExpression *regExp = [NSRegularExpression regularExpressionWithPattern:regex options:0 error:nil];
    NSMutableString *destCopy = [[NSMutableString alloc] initWithString:dest];
    [regExp enumerateMatchesInString:dest options:0 range:NSMakeRange(0, dest.length) usingBlock:^(NSTextCheckingResult *result, NSMatchingFlags flags, BOOL *stop) {
        NSString *specialStr = [dest substringWithRange:result.range];
        NSString *charStr = [dest substringWithRange:[result rangeAtIndex:1]];
        NSString *replaceStr = [NSString stringWithFormat:@"%c", [charStr intValue]];
        NSRange range = [destCopy rangeOfString:specialStr];
        [destCopy replaceCharactersInRange:range withString:replaceStr];
    }];
    
    
    return destCopy;
}

@end
