//
//  UIConfig.m
//  IDOIAP2
//
//  Created by wady on 6/3/13.
//  Copyright (c) 2013 damai_mini. All rights reserved.
//

#import "HETUIConfig.h"

@implementation HETUIConfig

UIColor *kColor1(){
    return [HETPublicUIConfig shareConfig].color1?[HETPublicUIConfig shareConfig].color1:[HETUIConfig colorFromHexRGB:@"000000"];
}
UIColor *kColor2(){
    return [HETPublicUIConfig shareConfig].color2?[HETPublicUIConfig shareConfig].color2:[[HETUIConfig colorFromHexRGB:@"303030"] colorWithAlphaComponent:0.8];
}
UIColor *kColor3(){
    return [HETPublicUIConfig shareConfig].color3?[HETPublicUIConfig shareConfig].color3:[[HETUIConfig colorFromHexRGB:@"5e5e5e"] colorWithAlphaComponent:0.6];
}
UIColor *kColor4(){
    return [HETPublicUIConfig shareConfig].color4?[HETPublicUIConfig shareConfig].color4:[[HETUIConfig colorFromHexRGB:@"919191"] colorWithAlphaComponent:0.4];
}
UIColor *kColor5(){
    return [HETPublicUIConfig shareConfig].color5?[HETPublicUIConfig shareConfig].color5:[[HETUIConfig colorFromHexRGB:@"c6c6c6"] colorWithAlphaComponent:0.8];
}
UIColor *kColor6(){
    return [HETPublicUIConfig shareConfig].color6?[HETPublicUIConfig shareConfig].color6:[HETUIConfig colorFromHexRGB:@"3285ff"];
}
UIColor *kColor7(){
    return [HETPublicUIConfig shareConfig].color7?[HETPublicUIConfig shareConfig].color7:[HETUIConfig colorFromHexRGB:@"ef4f4f"];
}
UIColor *kColor8(){
    return [HETPublicUIConfig shareConfig].color8?[HETPublicUIConfig shareConfig].color8:[HETUIConfig colorFromHexRGB:@"ff9335"];
}
UIColor *kColor9(){
    return [HETPublicUIConfig shareConfig].color9?[HETPublicUIConfig shareConfig].color9:[HETUIConfig colorFromHexRGB:@"efeff4"];
}
UIColor *kColor10(){
    return [HETPublicUIConfig shareConfig].color10?[HETPublicUIConfig shareConfig].color10:[HETUIConfig colorFromHexRGB:@"396cbe"];
}
UIColor *kColor11(){
    return [HETPublicUIConfig shareConfig].color11?[HETPublicUIConfig shareConfig].color11:[HETUIConfig colorFromHexRGB:@"bf3f3f"];
}
UIColor *kColor12(){
    return [HETPublicUIConfig shareConfig].color12?[HETPublicUIConfig shareConfig].color12:[HETUIConfig colorFromHexRGB:@"ffffff"];
}
UIColor *kColor13(){
    return [HETPublicUIConfig shareConfig].color13?[HETPublicUIConfig shareConfig].color13:[HETUIConfig colorFromHexRGB:@"fffffc"];
}
UIColor *kColor14(){
    return [HETPublicUIConfig shareConfig].color14?[HETPublicUIConfig shareConfig].color14:[HETUIConfig colorFromHexRGB:@"2d78e6"];
}
UIColor *kColor15(){
    return [HETPublicUIConfig shareConfig].color15?[HETPublicUIConfig shareConfig].color15:[HETUIConfig colorFromHexRGB:@"d24646"];
}
UIColor *kColor16(){
    return [HETPublicUIConfig shareConfig].color16?[HETPublicUIConfig shareConfig].color16:[HETUIConfig colorFromHexRGB:@"eff5fc"];
}
UIColor *kColor17(){
    return [HETPublicUIConfig shareConfig].color17?[HETPublicUIConfig shareConfig].color17:[HETUIConfig colorFromHexRGB:@"5ebaee"];
}
UIColor *kColor18(){
    return [HETPublicUIConfig shareConfig].color18?[HETPublicUIConfig shareConfig].color18:[HETUIConfig colorFromHexRGB:@"f88aab"];
}
UIColor *kColor19(){
    return [HETPublicUIConfig shareConfig].color19?[HETPublicUIConfig shareConfig].color19:[HETUIConfig colorFromHexRGB:@"3285ff"];
}


UIColor *kColor20(){
    return [HETPublicUIConfig shareConfig].color20?[HETPublicUIConfig shareConfig].color20:[HETUIConfig colorFromHexRGB:@"4ead57"];
}
UIColor *kColor21(){
    return [HETPublicUIConfig shareConfig].color21?[HETPublicUIConfig shareConfig].color21:[HETUIConfig colorFromHexRGB:@"f1f9f2"];
}
UIColor *kColor22(){
    return [HETPublicUIConfig shareConfig].color22?[HETPublicUIConfig shareConfig].color22:[HETUIConfig colorFromHexRGB:@"706c75"];
}
UIColor *kColor23(){
    return [HETPublicUIConfig shareConfig].color23?[HETPublicUIConfig shareConfig].color23:[HETUIConfig colorFromHexRGB:@"f4f3f4"];
}
UIColor *kColor24(){
    return [HETPublicUIConfig shareConfig].color24?[HETPublicUIConfig shareConfig].color24:[HETUIConfig colorFromHexRGB:@"edeaf1"];
}
UIColor *kColor25(){
    return [HETPublicUIConfig shareConfig].color25?[HETPublicUIConfig shareConfig].color25:[HETUIConfig colorFromHexRGB:@"f6f4f9"];
}
UIColor *kColor26(){
    return [HETPublicUIConfig shareConfig].color26?[HETPublicUIConfig shareConfig].color26:[HETUIConfig colorFromHexRGB:@"dad6e1"];
}
UIColor *kColor27(){
    return [HETPublicUIConfig shareConfig].color27?[HETPublicUIConfig shareConfig].color27:[HETUIConfig colorFromHexRGB:@"e2e2e2"];
}
UIColor *kColor28(){
    return [HETPublicUIConfig shareConfig].color28?[HETPublicUIConfig shareConfig].color28:[HETUIConfig colorFromHexRGB:@"f1f1f1"];
}
UIColor *kColor29(){
    return [HETPublicUIConfig shareConfig].color29?[HETPublicUIConfig shareConfig].color29:[UIColor whiteColor];
}





UIFont *kFont1(){
    return [HETPublicUIConfig shareConfig].font1?[HETPublicUIConfig shareConfig].font1:[UIFont systemFontOfSize:18.f];
}
UIFont *kFont1_Bold(){
    return [HETPublicUIConfig shareConfig].font1_Blod?[HETPublicUIConfig shareConfig].font1_Blod:[UIFont boldSystemFontOfSize:18.f];
}
UIFont *kFont2(){
    return [HETPublicUIConfig shareConfig].font2?[HETPublicUIConfig shareConfig].font2:[UIFont systemFontOfSize:17.f];
}
UIFont *kFont2_Bold(){
    return [HETPublicUIConfig shareConfig].font2_Blod?[HETPublicUIConfig shareConfig].font2_Blod:[UIFont boldSystemFontOfSize:17.f];
}
UIFont *kFont3(){
    return [HETPublicUIConfig shareConfig].font3?[HETPublicUIConfig shareConfig].font3:[UIFont systemFontOfSize:16.f];
}
UIFont *kFont4(){
    return [HETPublicUIConfig shareConfig].font4?[HETPublicUIConfig shareConfig].font4:[UIFont systemFontOfSize:15.f];
}
UIFont *kFont5(){
    return [HETPublicUIConfig shareConfig].font5?[HETPublicUIConfig shareConfig].font5:[UIFont systemFontOfSize:12.f];
}






+ (CGSize) getScreenSize
{
    CGRect rect = [ UIScreen mainScreen ].applicationFrame;
    CGSize size_app_screen = rect.size;
    return size_app_screen;
}

+(CGSize)labelShadow
{
    return CGSizeMake(0,1);
}

//table cell shadow color
+ (UIColor *)getCellShadowColor
{
    return [UIColor colorWithRed:0
                           green:0
                            blue:0
                           alpha:0.4f];
}

//table footer shadow color
+ (UIColor *)getFooterCellShadowColor
{
    return [UIColor colorWithRed:1.0f
                           green:1.0f
                            blue:1.0f
                           alpha:0.1f];
}

+ (UIColor *) getContentTextColor
{
    return [UIColor colorWithRed:178/255.0f
                           green:190/255.0f
                            blue:197/255.0f
                           alpha:1.0f];
}

//label shadow color
+ (UIColor *) getContentShadowTextColor
{
    return [UIColor colorWithRed:0
                           green:0
                            blue:0
                           alpha:0.3f];
}

+ (UIColor *) underLineColor
{
    return [UIColor colorWithRed:107/255.0f
                    green:175/255.0f
                     blue:216/255.0f
                    alpha:1.0f];
}

+ (UIColor *) getContentNumberTextColor
{
    return [self colorFromHexRGB:@"828f98"];
}

+ (UIColor *) getTitleTextColor
{
    return [self colorFromHexRGB:@"eff2f4"];
}

+ (UIColor *) getBtnClockTextColor
{
    //return [self colorFromHexRGB:@"d1ac7f"];
    //return [self colorFromHexRGB:@"a79879"];
    return [UIColor whiteColor];
}

+ (UIColor *) getBtnTextColor
{
    return [self colorFromHexRGB:@"adb7be"];
}

+ (UIFont *) getDialogWarnSize
{
//    return [UIFont systemFontOfSize:18];
    return [UIFont boldSystemFontOfSize:18];
}

+ (UIFont *) getTitleSize
{
     return [UIFont boldSystemFontOfSize:20];
}

+ (UIFont *) getSettingSize
{
    return [UIFont boldSystemFontOfSize:18];
}

+ (UIFont *) getSubTitleNumSize
{
    return [UIFont fontWithName:@"HelveticaNeue-Light" size:16];
}

+ (UIFont *) getSubTitleSize
{
    return [UIFont systemFontOfSize:15];
}

+ (UIFont *) getContentSize
{
    return [UIFont systemFontOfSize:14];
}
+ (UIFont *) getBtnNumSize
{
    return [UIFont fontWithName:@"HelveticaNeueLTPro-Th" size:20];
}

+ (int) getDialogWarnHeight:(int)size
{
    return 18 * size + (size -1) * 5;
}

+ (int) getContentHeight:(int)size
{
    return 14 * size + (size -1) * 5;
}

+ (int) getSubTitleHeight:(int)size
{
    return 16 * size + (size -1) * 2;
}
// 获取行间距，段落尖间距
+ (int) getParagraphLineSeparator
{
    return 8;
}

+ (int) getTitleHeight
{
    return 20;
}

+ (int) getTitleY
{
//    if([self getScreenSize].height > 480)
//    {
//       return 88;
//    }
//    else
//    {
//       return 68;
//    }
    
    return 68;
}

+ (int) getBgPanelY
{
    /*
    if([self getScreenSize].height > 480)
    {
        return 50;
    }
    else
    {
        return 40;
    }
    */
    return 40;
}

+ (int) getMutiBtnButtomHeight
{
    if([self getScreenSize].height > 480)
    {
        return 40;
    }
    else
    {
        return 25;
    }
}

+ (int) getButtomHeight
{
    if([self getScreenSize].height > 480)
    {
        return 70;
    }
    else
    {
        return 25;
    }
}

+ (int) getPhoneInfoHeight
{
    return 20;
}

+ (int) getTitleSeparator
{
    if([self getScreenSize].height > 480)
    {
        return 25;
    }
    else
    {
        return 20;
    }
}
// 段落间间距
+ (int) getParagraphSeparator
{
    return 13;
}

+ (int) getParagraphAndImageSeparator
{
    if([self getScreenSize].height > 480)
    {
        return 35;
    }
    else
    {
        return 25;
    }
}

+ (int) getParagraphAndImageLargeSeparator
{
    return 40;
}

+ (int) getBtnAndBtnSeparator
{
    return 15;
}

+ (int) getAnimalCircleSeparator
{
    return 25;
}

+ (UIColor *)getColor:(NSString *)hexColor
{
    unsigned int red,green,blue;
    NSRange range;
    range.length = 2;
    
    range.location = 0;
    [[NSScanner scannerWithString:[hexColor substringWithRange:range]] scanHexInt:&red];
    
    range.location = 2;
    [[NSScanner scannerWithString:[hexColor substringWithRange:range]] scanHexInt:&green];
    
    range.location = 4;
    [[NSScanner scannerWithString:[hexColor substringWithRange:range]] scanHexInt:&blue];
    
    return [UIColor colorWithRed:(float)(red/255.0f) green:(float)(green / 255.0f) blue:(float)(blue / 255.0f) alpha:1.0f];
}

//%15黑
+ (UIColor *)tableCellSelectedColor
{
    return [UIColor colorWithRed:0
                           green:0
                            blue:0
                           alpha:0.15f];
}

+ (UIColor *) colorFromHexRGB:(NSString *) inColorString
{
    UIColor *result = nil;
    unsigned int colorCode = 0;
    unsigned char redByte, greenByte, blueByte;
    
    if (nil != inColorString)
    {
        NSScanner *scanner = [NSScanner scannerWithString:inColorString];
        (void) [scanner scanHexInt:&colorCode]; // ignore error
    }
    redByte = (unsigned char) (colorCode >> 16);
    greenByte = (unsigned char) (colorCode >> 8);
    blueByte = (unsigned char) (colorCode); // masks off high bits
    result = [UIColor
              colorWithRed: (float)redByte / 0xff
              green: (float)greenByte/ 0xff
              blue: (float)blueByte / 0xff
              alpha:1.0];    
    return result;
}

+ (UIColor *) colorFromHexRGB:(NSString *) inColorString alpha:(CGFloat)colorAlpha {
    UIColor *result = nil;
    unsigned int colorCode = 0;
    unsigned char redByte, greenByte, blueByte;
    
    if (nil != inColorString)
    {
        NSScanner *scanner = [NSScanner scannerWithString:inColorString];
        (void) [scanner scanHexInt:&colorCode]; // ignore error
    }
    redByte = (unsigned char) (colorCode >> 16);
    greenByte = (unsigned char) (colorCode >> 8);
    blueByte = (unsigned char) (colorCode); // masks off high bits
    result = [UIColor
              colorWithRed: (float)redByte / 0xff
              green: (float)greenByte/ 0xff
              blue: (float)blueByte / 0xff
              alpha:colorAlpha];
    return result;
}

+(CGFloat)frontViewLeftShowDistance
{
    return 320-80;
}

+(CGFloat)frontViewRightShowDistance
{
    return 320-50;
}

+(CGFloat)frontViewMinFactory
{
//    if (SYSTEM_VERSION_LESS_THAN(@"7.0")) {
//        return 1;
//    }
//    return 484/568.0f;
    return 1;
}


+(UIColor*)menuCellTitleColor
{
    return [self colorFromHexRGB:@"ffffff"];
}

+(UIColor*)menuCellDetailTitleColor
{
    return [self colorFromHexRGB:@"999999"];
}

+(UIFont*)menuCellTitleFont
{
    return [UIFont systemFontOfSize:18];
}

+(UIFont*)menuCellDetailTitleFont
{
    return [UIFont systemFontOfSize:12];
}

//右边菜单Cell左边的边距
+(CGFloat)rightMenuCellLeftEdge
{
    return 18.0f;
}

//右边菜单Cell右边的边距
+(CGFloat)rightMenuCellRightEdge
{
    return 15.0f;
}

+ (UIColor *)appNormalTextColor
{
    return [HETUIConfig colorFromHexRGB:@"999999"];
}

+(UIColor*)textPlaceHolderColor
{
    return [HETUIConfig colorFromHexRGB:@"bcbcbc"];
}


+(UIColor*)LoginBgColor
{
    return [HETUIConfig colorFromHexRGB:@"f8fafa"];
}


+ (UIImage *)imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
