//
//  HETDateHelper.h
//  CLife
//
//  Created by JiangJun on 15/6/19.
//  Copyright (c) 2015年 HET. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HETDateHelper : NSObject
/**
 *  [YYYY--MM--DD]格式的字符串转 NSDate 类型
 *
 *  @param string [YYYY--MM--DD]格式的字符串
 *
 *  @return NSDate
 */
+ (NSDate *)stringToDate: (NSString *)string;

/**
 *  NSDate 类型转[YYYY--MM--DD]格式的字符串
 *
 *  @param string NSDate
 *
 *  @return [YYYY--MM--DD]格式的字符串
 */
+ (NSString *)dateToString: (NSDate *)date;

+(NSDate *)getNowDateFromatAnDate:(NSDate *)anyDate;

@end
