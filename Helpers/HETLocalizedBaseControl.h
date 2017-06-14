//
//  HETLocalizedBaseControl.h
//  HETPublicSDK_Core
//
//  Created by tl on 15/11/27.
//  Copyright © 2015年 HET. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  所有模块的国际化继承此类，并实现tableName方法
 *
 */
@interface HETLocalizedBaseControl : NSObject
/**
 *  国际化后的字，可以自定义宏来简化写法，例如：HETLoginLolocalized()
 *
 *  @return 子类 不用重写
 */
+(NSString *)localizedString:(NSString *)string;

/**
 *  自定义表.string的名字
 *
 *  @return 子类需重写
 */
+(NSString *)tableName;
@end
