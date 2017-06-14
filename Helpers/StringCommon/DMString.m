//
//  DMString.m
//  IDOIAP
//
//  Created by wady on 12/24/12.
//  Copyright (c) 2012 ccc. All rights reserved.
//

#import "DMString.h"

#import <CommonCrypto/CommonDigest.h>

@implementation DMString

+ (int)unicodeStringLength:(NSString*)string
{
    if (!string)
    {
        return 0;
    }
    
    int strlength = 0;
    char* p = (char*)[string cStringUsingEncoding:NSUnicodeStringEncoding];
    for (int i=0 ; i<[string lengthOfBytesUsingEncoding:NSUnicodeStringEncoding] ;i++) {
        if (*p) {
            p++;
            strlength++;
        }
        else {
            p++;
        }
    }
    return strlength;
}

+ (NSString *)sizeString:(NSString*)string width:(NSInteger)width font:(UIFont*)font
{
    NSString* newString = @"";
    if (string)
    {
        CGSize size = [string sizeWithFont:font];
        if (size.width <= width)
        {
//            newString = [[string copy] autorelease];
            newString = [string copy];
        }
        else
        {
            for (NSInteger i = (string.length-1) ; i >= 1; i--)
            {
                NSString* tempString = [[string substringToIndex:i] stringByAppendingString:@"..."];
                CGSize newSize = [tempString sizeWithFont:font];
                if (newSize.width <= width)
                {
                    newString = tempString;
                    break;
                }
            }
            
        }
        
    }
    
    return newString;
}

+ (NSString *) stringFromMD5:(NSString *)str{
    
    if(self == nil || [str length] == 0)
        return nil;
    
    const char *value = [str UTF8String];
    
    unsigned char outputBuffer[CC_MD5_DIGEST_LENGTH];
    CC_MD5(value, strlen(value), outputBuffer);
    
    NSMutableString *outputString = [[NSMutableString alloc] initWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for(NSInteger count = 0; count < CC_MD5_DIGEST_LENGTH; count++){
        [outputString appendFormat:@"%02x",outputBuffer[count]];
    }
    return outputString;
}

+ (NSString *) trimString:(NSString *)source
{
    // NSString * dest = [source stringByReplacingOccurrencesOfString:@"\n"
    //                                                    withString:@""];
    NSString *dest = nil;
    if(source != nil)
    {
        dest = [source
                      stringByTrimmingCharactersInSet:
                      [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    return dest;
}

+(BOOL)isValidPassword:(NSString *)passwordStr
{
    NSString * regex = @"^[A-Za-z0-9]{6,20}$";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    BOOL isMatch = [pred evaluateWithObject:passwordStr];
    return isMatch;
}

+ (bool) isMail:(NSString *)mail
{
    bool bRet = false;
    
    NSString * MAIL_MATCH =
             @"\\b([a-zA-Z0-9%_.+\\-]+)@([a-zA-Z0-9.\\-]+?\\.[a-zA-Z]{2,6})\\b";
    NSPredicate *regextestct =
         [NSPredicate predicateWithFormat:@"SELF MATCHES %@", MAIL_MATCH];
    
    bRet = [regextestct evaluateWithObject:mail];
    
    return bRet;
}

+ (bool) isDate:(NSString *)date
{
    bool bRet = false;
    bool bRet2 = false;
    
    NSString * MAIL_MATCH =
    @"\\d{4}-\\d{2}-\\d{2}";
    NSString * MAIL_MATCH2 =
    @"\\d{4}-\\d{2}-\\d{2} \\d{2}:\\d{2}:\\d{2}";
    NSPredicate *regextestct =
    [NSPredicate predicateWithFormat:@"SELF MATCHES %@", MAIL_MATCH];
    NSPredicate *regextestct2 =
    [NSPredicate predicateWithFormat:@"SELF MATCHES %@", MAIL_MATCH2];
    
    bRet = [regextestct evaluateWithObject:date];
    bRet2 = [regextestct2 evaluateWithObject:date];
    
    return (bRet || bRet2);
}

+ (BOOL)isMobileNumber:(NSString *)mobileNum
{
    NSString *newMobile = @"^((17[0-9])|(13[0-9])|(15[0-3,5-9])|(18[0-9])|(145)|(147))\\d{8}$";
    NSPredicate *regextesnewMobile = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", newMobile];
    return [regextesnewMobile evaluateWithObject:mobileNum];
}

//检查邮箱是否有效
+(BOOL)isValidEmail:(NSString *)emailStr {
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:emailStr];
}

+(NSString *)divdeStringWithValue:(int)valInt
{
    NSString *valStr = [NSString stringWithFormat:@"%d",valInt];
    if(valInt<1000)//3位数
    {
        
    }
    else if(valInt<10000) //4位数
    {
        valStr = [NSString stringWithFormat:@"%@,%@",
                  [valStr substringToIndex:1],
                   [valStr substringWithRange: NSMakeRange(1,3)]];
    }
    else if(valInt<100000)//5位数
    {
        valStr = [NSString stringWithFormat:@"%@,%@",
                  [valStr substringToIndex:2],
                   [valStr substringWithRange: NSMakeRange(2,3)]];
    }
    else if(valInt<1000000)//6位数
    {
        valStr = [NSString stringWithFormat:@"%@,%@",
                  [valStr substringToIndex:3],
                   [valStr substringWithRange: NSMakeRange(3,3)]];
    }
    else if(valInt<10000000)//7位数
    {
        valStr = [NSString stringWithFormat:@"%@,%@,%@",
                  [valStr substringToIndex:1],
                   [valStr substringWithRange: NSMakeRange(1,3)],
                   [valStr substringWithRange: NSMakeRange(4,3)]];
    }
    else if(valInt<100000000)//8位数
    {
        valStr = [NSString stringWithFormat:@"%@,%@,%@",
                  [valStr substringToIndex:2],
                   [valStr substringWithRange: NSMakeRange(2,3)],
                   [valStr substringWithRange: NSMakeRange(5,3)]];
    }
    else if(valInt<1000000000)//9位数
    {
        valStr = [NSString stringWithFormat:@"%@,%@,%@",
                  [valStr substringToIndex:3],
                   [valStr substringWithRange: NSMakeRange(3,3)],
                   [valStr substringWithRange: NSMakeRange(6,3)]];
    }
    return valStr;
}

+(NSString *)divdeStringWithStringValue:(NSString *)val
{
    NSString *valStr = @"";
    int num = 0;
    
    num = [val intValue];
    while(num > 0)
    {
        if(![valStr isEqualToString:@""])
        {
            valStr = [NSString stringWithFormat:@"%d.%@",num % 10, valStr];
        }
        else
        {
            valStr = [NSString stringWithFormat:@"%d",num % 10];
        }
        num = num / 10;
    }
    
    return valStr;
}

@end
