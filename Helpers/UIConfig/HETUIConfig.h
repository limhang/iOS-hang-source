//
//  UIConfig.h
//  IDOIAP2
//
//  Created by wady on 6/3/13.
//  Copyright (c) 2013 damai_mini. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface HETUIConfig : NSObject

#pragma mark ----------公共模块色系
UIColor *kColor1();
UIColor *kColor2();
UIColor *kColor3();
UIColor *kColor4();
UIColor *kColor5();
UIColor *kColor6();
UIColor *kColor7();
UIColor *kColor8();
UIColor *kColor9();
UIColor *kColor10();
UIColor *kColor11();
UIColor *kColor12();
UIColor *kColor13();
UIColor *kColor14();
UIColor *kColor15();
UIColor *kColor16();
UIColor *kColor17();
UIColor *kColor18();
UIColor *kColor19();

UIColor *kColor20();
UIColor *kColor21();
UIColor *kColor22();
UIColor *kColor23();
UIColor *kColor24();
UIColor *kColor25();
UIColor *kColor26();
UIColor *kColor27();
UIColor *kColor28();
UIColor *kColor29();
#pragma mark ----------公共模块字体
UIFont *kFont1();
UIFont *kFont1_Bold();
UIFont *kFont2();
UIFont *kFont2_Bold();
UIFont *kFont3();
UIFont *kFont4();
UIFont *kFont5();









+ (CGSize) getScreenSize;

+ (UIColor *) getContentTextColor;

+ (UIColor *) getContentShadowTextColor;

+ (UIColor *) underLineColor;

+ (UIColor *)getCellShadowColor;

+ (UIColor *)getFooterCellShadowColor;

+ (UIColor *) getTitleTextColor;

+ (UIColor *) getBtnTextColor;

+ (UIColor *) getBtnClockTextColor;

+ (UIFont *) getContentSize;

+ (UIFont *) getSubTitleSize;

+ (UIFont *) getTitleSize;

+ (UIFont *) getSubTitleNumSize;

+ (UIFont *) getBtnNumSize;

+ (UIFont *) getDialogWarnSize;

+ (UIFont *) getSettingSize;

+ (int) getDialogWarnHeight:(int)size;

+ (int) getTitleHeight;

+ (int) getSubTitleHeight:(int)size;

+ (int) getContentHeight:(int)size;

+ (UIColor *) getContentNumberTextColor;

+ (UIColor *) getColor:(NSString *)hexColor;

+ (UIColor *) colorFromHexRGB:(NSString *) inColorString;

+ (UIColor *) colorFromHexRGB:(NSString *) inColorString alpha:(CGFloat)colorAlpha;

+ (int) getButtomHeight;

+ (int) getMutiBtnButtomHeight;

+ (int) getTitleY;

+ (int) getBgPanelY;

// 获取行间距，段落尖间距 
+ (int) getParagraphLineSeparator;
// title 和下面正文的距离
+ (int) getTitleSeparator;
// 段落间的距离
+ (int) getParagraphSeparator;
// 段落和图片间距
+ (int) getParagraphAndImageSeparator;
// 圆点动画间距
+ (int) getAnimalCircleSeparator;
// 按钮间的距离
+ (int) getBtnAndBtnSeparator;
// 段落和图片大的间距
+ (int) getParagraphAndImageLargeSeparator;

//字体阴影偏移量
+(CGSize)labelShadow;
//图表颜色选中颜色
+ (UIColor *)tableCellSelectedColor;

//滑动中间页到左边菜单，中间页面，显示的长度
+(CGFloat)frontViewLeftShowDistance;

//滑动中间页到右边边菜单，中间页面，显示的长度
+(CGFloat)frontViewRightShowDistance;

//中间页，滑动之后，缩小的最小比例
+(CGFloat)frontViewMinFactory;

//两边菜单的主标题的颜色
+(UIColor*)menuCellTitleColor;

//两边菜单的副标题的颜色
+(UIColor*)menuCellDetailTitleColor;

//两边菜单的主标题的字体
+(UIFont*)menuCellTitleFont;

//两边菜单的副标题的字体
+(UIFont*)menuCellDetailTitleFont;

//右边菜单Cell左边的边距
+(CGFloat)rightMenuCellLeftEdge;


//右边菜单Cell右边的边距
+(CGFloat)rightMenuCellRightEdge;

+ (UIColor *)appNormalTextColor;

+(UIColor*)LoginBgColor;
/**
 *  textPlaceHolderColor 返回输入框默认的placeHolder颜色
 *
 *  @return placeHolder颜色
 */
+(UIColor*)textPlaceHolderColor;


+ (UIImage *)imageWithColor:(UIColor *)color;

@end
