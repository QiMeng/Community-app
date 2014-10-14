//
//  SverviceBase.m
//  Community
//
//  Created by PYL on 14-9-27.
//  Copyright (c) 2014年 QiMENG_LYS. All rights reserved.
//  服务基类

#import "SverviceBase.h"
#import "Bulletin.h"
#import "Page.h"
#import "Payment.h"
#import "Express.h"
#import "Carpool.h"
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
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"bulletin" ofType:@"plist"];
    NSDictionary * modelDic = [[NSMutableDictionary alloc] initWithContentsOfFile:path];
    
    NSArray * pArray = [modelDic objectForKeyNotNull:@"bulletin"];
    
    NSMutableArray * list = [NSMutableArray array];
    for (NSDictionary * dic in pArray) {
        [list addObject:[Bulletin itemFromDic:dic]];
    }

    
    if (callback && [callback respondsToSelector:@selector(loadBulletinListCallBack:msg:bulletinList:)] ) {
        
        [callback loadBulletinListCallBack:200 msg:@"加载数据成功" bulletinList:list];
        
    }
}
#pragma mark - 获取社区新闻
- (void) loadBulletinNewUserID:(NSString *)userID callBack:(id)callback {
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"bulletin" ofType:@"plist"];
    NSDictionary * modelDic = [[NSMutableDictionary alloc] initWithContentsOfFile:path];
    
    NSArray * pArray = [modelDic objectForKeyNotNull:@"news"];
    
    NSMutableArray * list = [NSMutableArray array];
    for (NSDictionary * dic in pArray) {
        [list addObject:[Bulletin itemFromDic:dic]];
    }
    
    
    if (callback && [callback respondsToSelector:@selector(loadBulletinNewListCallBack:msg:bulletinList:)] ) {
        
        [callback loadBulletinNewListCallBack:200 msg:@"加载数据成功" bulletinList:list];
        
    }
}


#pragma mark - 社区黄页
- (void)loadPagesUserID:(NSString *)userID typeID:(NSString *)type callBack:(id)callback {
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"page" ofType:@"plist"];
    NSDictionary * modelDic = [[NSMutableDictionary alloc] initWithContentsOfFile:path];
    
    NSArray * pArray = [modelDic objectForKeyNotNull:type];
    
    NSMutableArray * list = [NSMutableArray array];
    for (NSDictionary * dic in pArray) {
        [list addObject:[Page itemFromDic:dic]];
    }
    

    
    if (callback && [callback respondsToSelector:@selector(loadPagesListCallBack:msg:pagesList:)] ) {
        
        [callback loadPagesListCallBack:200 msg:@"加载数据成功" pagesList:list];
        
    }
    
}



#pragma mark - 缴费列表
- (void)loadPaymentUserID:(NSString *)userID callBack:(id)callback {
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"payment" ofType:@"plist"];
    NSDictionary * modelDic = [[NSMutableDictionary alloc] initWithContentsOfFile:path];
    
    NSArray * pArray = [modelDic objectForKeyNotNull:@"payment"];
    
    NSMutableArray * list = [NSMutableArray array];
    for (NSDictionary * dic in pArray) {
        [list addObject:[Payment itemFromDic:dic]];
    }

    if (callback && [callback respondsToSelector:@selector(loadPaymentListCallBack:msg:list:)] ) {
        [callback loadPaymentListCallBack:200 msg:@"加载数据成功" list:list];
        
    }
    
}

#pragma mark - 快递代收
- (void)loadExpressUserID:(NSString *)userID callBack:(id)callback {
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"express" ofType:@"plist"];
    NSDictionary * modelDic = [[NSMutableDictionary alloc] initWithContentsOfFile:path];
    
    NSArray * pArray = [modelDic objectForKeyNotNull:@"express"];
    
    NSMutableArray * list = [NSMutableArray array];
    for (NSDictionary * dic in pArray) {
        [list addObject:[Express itemFromDic:dic]];
    }
    
    if (callback && [callback respondsToSelector:@selector(loadListCallBack:msg:list:)] ) {
        [callback loadListCallBack:200 msg:@"加载数据成功" list:list];
        
    }
    
}

#pragma mark - 拼车
- (void)loadCarpoolUserID:(NSString *)userID callBack:(id)callback {
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"carpool" ofType:@"plist"];
    NSDictionary * modelDic = [[NSMutableDictionary alloc] initWithContentsOfFile:path];
    
    NSArray * pArray = [modelDic objectForKeyNotNull:@"carpool"];
    
    NSMutableArray * list = [NSMutableArray array];
    for (NSDictionary * dic in pArray) {
        [list addObject:[Carpool itemFromDic:dic]];
    }
    
    if (callback && [callback respondsToSelector:@selector(loadListCallBack:msg:list:)] ) {
        [callback loadListCallBack:200 msg:@"加载数据成功" list:list];
        
    }
    
}


//- (void)



@end
