//
//  CCCommonHelp.m
//  CCLoginAndRegistCommon
//
//  Created by mr.cao on 15/4/10.
//  Copyright (c) 2015年 mr.cao. All rights reserved.
//

#import "CCCommonHelp.h"
#import "HETPublicJIFHeader.h"
#import <MJRefresh.h>

#pragma mark -----HETPublicUIConfig category
@implementation HETPublicUIConfig (het_hud)
/*!
 *  长期存在hud事件block
 */
+(void(^)(NSString *title))getHet_showHudtitle{
    return objc_getAssociatedObject(self, @selector(het_showHudtitle:));
}
/*!
 *  自动隐藏hud事件block
 */
+(void(^)(NSString *title,NSString *msg))getHet_showAutoDissmissHud{
    return objc_getAssociatedObject(self, @selector(het_showAutoDissmissHud:));
}
/*!
 *  隐藏hud事件block
 */
+(void(^)())getHet_hidHud{
    return objc_getAssociatedObject(self, @selector(het_hidHud:));
}
+(void(^)(UIScrollView *scrollView,headRefreshBlock refreshBlock))getHet_headerRefresh{
    return objc_getAssociatedObject(self, @selector(het_headerRefresh:));
}
+(void(^)(UIScrollView *scrollView))getHet_endHeaderRefresh{
    return objc_getAssociatedObject(self, @selector(het_endHeaderRefresh:));
}
+(void(^)(UIScrollView *scrollView,footRefreshBlock refreshBlock))getHet_footerRefresh{
    return objc_getAssociatedObject(self, @selector(het_footerRefresh:));
}
+(void(^)(UIScrollView *scrollView))getHet_endFooterRefresh{
    return objc_getAssociatedObject(self, @selector(het_endFooterRefresh:));
}
@end
#pragma mark ---
@implementation CCCommonHelp

#pragma mark -----loading框方法集
+(MBProgressHUD *)showCustomHudtitle:(NSString *)title {
    if ([HETPublicUIConfig getHet_showHudtitle]) {
        [HETPublicUIConfig getHet_showHudtitle](title);
        return nil;
    }
    MBProgressHUD *hud=[[MBProgressHUD alloc] initWithView:[UIApplication sharedApplication].keyWindow] ;
    [[UIApplication sharedApplication].keyWindow addSubview:hud];
    hud.dimBackground = NO;
    [hud setDetailsLabelText:title];
    [hud show:YES];
    return hud;
}

+(void)showAutoDissmissAlertView:(NSString *)title msg:(NSString *)msg
{
    if ([HETPublicUIConfig getHet_showAutoDissmissHud]) {
        [HETPublicUIConfig getHet_showAutoDissmissHud](title,msg);
        return;
    }
    MBProgressHUD *hud=[[MBProgressHUD alloc] initWithView:[UIApplication sharedApplication].keyWindow] ;
    hud.mode=MBProgressHUDModeText;
    hud.dimBackground = NO;
    [[UIApplication sharedApplication].keyWindow addSubview:hud];
    [hud setDetailsLabelText:msg];
    [hud show:YES];
    [hud hide:YES afterDelay:1.5];
}
+(void)HidHud
{
    if ([HETPublicUIConfig getHet_hidHud]) {
        [HETPublicUIConfig getHet_hidHud]();
        return;
    }
    [MBProgressHUD hideAllHUDsForView:[UIApplication sharedApplication].keyWindow animated:YES];
}
#pragma mark -----上拉，下拉方法集
+(void)headerRefreshForView:(UIScrollView *)scrollView refreshBlock:(headRefreshBlock)block{
    if ([HETPublicUIConfig getHet_headerRefresh]) {
        [HETPublicUIConfig getHet_headerRefresh](scrollView,block);
        return;
    }
    
    HETPublicJIFHeader *header = [HETPublicJIFHeader headerWithRefreshingBlock:^{
        block();
    }];
    header.lastUpdatedTimeLabel.hidden = YES;
    
    // 隐藏状态
    header.stateLabel.hidden = YES;
    scrollView.header = header;
}
+(void)endHeaderRefreshForView:(UIScrollView *)scrollView{
    if ([HETPublicUIConfig getHet_endHeaderRefresh]) {
        [HETPublicUIConfig getHet_endHeaderRefresh](scrollView);
        return;
    }
    
    [scrollView.header endRefreshing];
}

+(void)footerRefreshForView:(UIScrollView *)scrollView refreshBlock:(footRefreshBlock)block{
    if ([HETPublicUIConfig getHet_footerRefresh]) {
        [HETPublicUIConfig getHet_footerRefresh](scrollView,block);
        return;
    }
    
    scrollView.footer = [MJRefreshBackNormalFooter footerWithRefreshingBlock:^{
        block();
    }];
}
+(void)endFootRefreshForView:(UIScrollView *)scrollView{
    if ([HETPublicUIConfig getHet_endFooterRefresh]) {
        [HETPublicUIConfig getHet_endFooterRefresh](scrollView);
        return;
    }
    
    [scrollView.footer endRefreshing];
}

@end
