//
//  HETLocalizedBaseControl.m
//  HETPublicSDK_Core
//
//  Created by tl on 15/11/27.
//  Copyright © 2015年 HET. All rights reserved.
//

#import "HETLocalizedBaseControl.h"

@implementation HETLocalizedBaseControl
+(NSString *)localizedString:(NSString *)string{
    
    NSString *resourceStr =[[NSUserDefaults standardUserDefaults] objectForKey:@"userLanguage"];
    if (resourceStr.length == 0) {
        resourceStr = @"zh-Hans";
    }
   return [[NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%@",resourceStr] ofType:@"lproj"]] localizedStringForKey:(string) value:@"" table:[self tableName]];
}
+(NSString *)tableName{
    return nil;
}
@end
