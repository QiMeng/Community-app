//
//  SverviceBase.m
//  Community
//
//  Created by PYL on 14-9-27.
//  Copyright (c) 2014年 QiMENG_LYS. All rights reserved.
//  服务基类

#import "SverviceBase.h"
#import "Bulletin.h"
#import "PageTelPhone.h"
@implementation SverviceBase


+ (SverviceBase *)shareInstance {
    static SverviceBase *__singletion;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        __singletion=[[self alloc] init];
        
    });
    return __singletion;
}


-(void)doRequest:(NSString*)interface paramer:(NSString*)paramer controller:(id)controller {
    
}
- (void)requestDidCode:(long)code msg:(NSString *)msg data:(id)sender{
}

#pragma mark - 登录
-(void)clientLogin:(NSString*)name password:(NSString*)pwd callBack:(id)callback {
    
  
    if (callback && [callback respondsToSelector:@selector(requestDidCode:msg:data:)] ) {
        
        if ([pwd isEqualToString:@"123"] && [name isEqualToString:@"123"]) {
             [callback requestDidCode:200 msg:@"登录成功" data:nil];
        }else {
             [callback requestDidCode:0 msg:@"密码错误" data:nil];
        }
    }

}
#pragma mark - 注册
- (void)clientSignupDic:(NSDictionary *)dic callBack:(id)callback {

    if (callback && [callback respondsToSelector:@selector(requestDidCode:msg:data:)] ) {
        
        [callback requestDidCode:200 msg:@"注册成功" data:nil];
        
    }
    
}

#pragma mark - 获取社区公告
- (void) loadBulletinUserID:(NSString *)userID callBack:(id)callback {
    
    NSArray * list = @[[Bulletin itemFromDic:@{@"name":@"社区贴黑榜曝无证门店提醒居民谨慎消费",
                                               @"description": @"新京报讯(记者吴振鹏)近日,在海淀区甘家口小区公告栏上贴出了“黑榜”,公布社区范围内未取得《营业执照》等相关许可证的餐饮、美容等店铺。甘家口街道办事处副主任"}],
                       [Bulletin itemFromDic:@{@"name":@"456"}],
                       [Bulletin itemFromDic:@{@"name":@"789"}],
                       [Bulletin itemFromDic:@{@"name":@"456"}],
                       [Bulletin itemFromDic:@{@"name":@"456"}],
                       [Bulletin itemFromDic:@{@"name":@"456"}],
                       [Bulletin itemFromDic:@{@"name":@"456"}],
                       [Bulletin itemFromDic:@{@"name":@"456"}],
                       [Bulletin itemFromDic:@{@"name":@"456"}],
                       [Bulletin itemFromDic:@{@"name":@"456"}],
                       [Bulletin itemFromDic:@{@"name":@"456"}]];
    
    if (callback && [callback respondsToSelector:@selector(loadBulletinListCallBack:msg:bulletinList:)] ) {
        
        [callback loadBulletinListCallBack:200 msg:@"加载数据成功" bulletinList:list];
        
    }
}

#pragma mark - 社区黄页
- (void)loadPagesUserID:(NSString *)userID callBack:(id)callback {
    
    NSArray * list = @[[PageContainer itemFromDic:@{@"name":@"物业",
                                                    @"telphones":@[@{@"name": @"长城物业报修电话",
                                                                     @"telphone": @"123456789"},
                                                                   @{@"name": @"长城物业投诉",
                                                                     @"telphone": @"123456789"},
                                                                   @{@"name": @"长城物业监督",
                                                                     @"telphone": @"123456789"}]}],
                       [PageContainer itemFromDic:@{@"name":@"居委会",
                                                    @"telphones":@[@{@"name": @"中山社区",
                                                                     @"telphone": @"123456789"},
                                                                   @{@"name": @"社区养老",
                                                                     @"telphone": @"123456789"}]}]];
    
    if (callback && [callback respondsToSelector:@selector(loadPagesListCallBack:msg:pagesList:)] ) {
        
        [callback loadPagesListCallBack:200 msg:@"加载数据成功" pagesList:list];
        
    }
    
}

//- (void)



@end
