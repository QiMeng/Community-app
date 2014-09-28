//
//  SverviceBase.m
//  Community
//
//  Created by PYL on 14-9-27.
//  Copyright (c) 2014年 QiMENG_LYS. All rights reserved.
//  服务基类

#import "SverviceBase.h"

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



@end
