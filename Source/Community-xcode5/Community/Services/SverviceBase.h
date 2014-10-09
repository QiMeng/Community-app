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


//登录
- (void)clientLogin:(NSString*)name password:(NSString*)pwd callBack:(id)callback;

//注册
- (void)clientSignupDic:(NSDictionary *)dic callBack:(id)callback;

#pragma mark - 社区公告
//获取社区公告
- (void)loadBulletinUserID:(NSString *)userID callBack:(id)callback;
- (void)loadBulletinListCallBack:(long)retCode msg:(NSString*)msg bulletinList:(NSArray *)bulletinList;

#pragma mark - 社区黄页
//获取社区黄页
- (void)loadPagesUserID:(NSString *)userID callBack:(id)callback;
- (void)loadPagesListCallBack:(long)retCode msg:(NSString*)msg pagesList:(NSArray *)pagesList;










@end
