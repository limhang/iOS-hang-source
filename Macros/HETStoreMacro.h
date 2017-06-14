//
//  StoreMacro.h
//  CLife
//
//  Created by Newman on 15/5/27.
//  Copyright (c) 2015年 HET. All rights reserved.
//

#ifndef CLife_StoreMacro_h
#define CLife_StoreMacro_h

#define IS_iPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)
#define SYSTEM_VERSION_EQUAL_TO(v)                  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
#define SYSTEM_VERSION_GREATER_THAN(v)              ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)
#define IOS7 SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"7.0")
//判断是否为iPad
#define ISPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#define IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
//判断是否为iPhone 4
#define IS_IPHONE_4 (IS_IPHONE && ScreenHeight == 480.0)
//判断是否为iPhone 6
#define IS_IPHONE_6 (IS_IPHONE && ScreenHeight == 667.0)
//判断是否为iPhone 6+
#define IS_IPHONE_6P (IS_IPHONE && ScreenHeight == 736.0)
#define WEAKSELF typeof(self) __weak weakSelf = self;
#define STRONGSELF typeof(weakSelf) __strong strongSelf = weakSelf;

#define CURRENT_LANGUAGE_IS_CHINESE ([[[NSLocale preferredLanguages] objectAtIndex:0] isEqualToString:@"zh-Hans"]||[[[NSLocale preferredLanguages] objectAtIndex:0] isEqualToString:@"zh-Hant"])
#endif
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
//获取设备的物理高度
#define ScreenHeight [UIScreen mainScreen].bounds.size.height
//获取设备的物理宽度
#define ScreenWidth [UIScreen mainScreen].bounds.size.width

#define SizeScaleWidth  ((ScreenHeight>480)?ScreenWidth/320:1.0)
#define SizeScaleHeight ((ScreenHeight>480)?ScreenHeight/568:1.0)

#define TrailOfView(view) (view.frame.origin.x+view.frame.size.width)
#define BottomOfView(view) (view.frame.origin.y+view.frame.size.height)
#define kScaleWidth (ScreenWidth/375)
#define kScaleHeight ((self.navigationController==nil)?(ScreenHeight/667):(self.navigationController.navigationBarHidden==NO?((ScreenHeight-64)/603):(ScreenHeight/667)))
#define kWidthAfterScale(x)  ((x)*kScaleWidth)
#define kHeightAfterScale(y) ((y)*kScaleHeight)


#define SAFE_STRING(str) (![str isKindOfClass: [NSString class]] ? @"" : str)
