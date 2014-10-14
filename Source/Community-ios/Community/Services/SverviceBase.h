//
//  SverviceBase.h
//  Community
//
//  Created by PYL on 14-9-27.
//  Copyright (c) 2014年 QiMENG_LYS. All rights reserved.
//

#import <Foundation/Foundation.h>


#import <ASIHTTPRequest.h>
#import <ASINetworkQueue.h>
#import <ASIFormDataRequest.h>
#import <JSONKit.h>

#define kASIUrl @"ASIUrl"
#define kASIName @"ASIName"
#define kASIData @"ASIData"

#define kSverviceInstance [SverviceBase shareInstance]

@interface SverviceBase : NSObject

+ (SverviceBase *)shareInstance;

- (void)doRequest:(NSString*)interface paramer:(NSString*)paramer controller:(id)controller ;


- (void)loadListCallBack:(long)retCode msg:(NSString*)msg list:(NSArray *)list;

//登录
- (void)clientLogin:(NSString*)name password:(NSString*)pwd callBack:(id)callback;

//注册
- (void)clientSignupDic:(NSDictionary *)dic callBack:(id)callback;

#pragma mark - 社区公告
//获取社区公告
- (void)loadBulletinUserID:(NSString *)userID callBack:(id)callback;
- (void)loadBulletinListCallBack:(long)retCode msg:(NSString*)msg bulletinList:(NSArray *)bulletinList;
//社区新闻
- (void) loadBulletinNewUserID:(NSString *)userID callBack:(id)callback;
- (void)loadBulletinNewListCallBack:(long)retCode msg:(NSString*)msg bulletinList:(NSArray *)bulletinList;

#pragma mark - 社区黄页
//获取社区黄页
- (void)loadPagesUserID:(NSString *)userID typeID:(NSString *)type callBack:(id)callback;
- (void)loadPagesListCallBack:(long)retCode msg:(NSString*)msg pagesList:(NSArray *)pagesList;

#pragma mark - 缴费
- (void)loadPaymentUserID:(NSString *)userID callBack:(id)callback;
- (void)loadPaymentListCallBack:(long)retCode msg:(NSString*)msg list:(NSArray *)list;

#pragma mark - 快递代收
- (void)loadExpressUserID:(NSString *)userID callBack:(id)callback;

#pragma mark - 拼车
- (void)loadCarpoolUserID:(NSString *)userID callBack:(id)callback;




@end
