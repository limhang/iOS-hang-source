//
//  CCCommonHelp.h
//  CCLoginAndRegistCommon
//
//  Created by mr.cao on 15/4/10.
//  Copyright (c) 2015年 mr.cao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MBProgressHUD.h"
#import "HETPublicUIConfig.h"
@interface CCCommonHelp : NSObject

#pragma mark ----loading框，公共模块中所有的loading均调用如下3个方法

+(MBProgressHUD *)showCustomHudtitle:(NSString *)title;
/*!
 *   请忽略title，信息用msg~！！！！
 */
+(void)showAutoDissmissAlertView:(NSString *)title msg:(NSString *)msg;
+(void)HidHud;

#pragma mark ----上拉，下拉，公共模块中，所有的上拉，下拉均调用4个方法
/*!
 *  开始下拉刷新
 *
 *  @param scrollView 需要刷新的view
 *  @param block      在block中进行刷新操作
 */
+(void)headerRefreshForView:(UIScrollView *)scrollView refreshBlock:(headRefreshBlock)block;
/*!
 *  结束下拉刷新
 *
 *  @param scrollView 需要结束下拉刷新的view
 */
+(void)endHeaderRefreshForView:(UIScrollView *)scrollView;
/*!
 *  开始上拉刷新
 *
 *  @param scrollView 需要刷新的view
 *  @param block      在block中进行刷新操作
 */
+(void)footerRefreshForView:(UIScrollView *)scrollView refreshBlock:(footRefreshBlock)block;
/*!
 *  结束下拉刷新
 *
 *  @param scrollView 需要结束下拉刷新的view
 */
+(void)endFootRefreshForView:(UIScrollView *)scrollView;


@end
