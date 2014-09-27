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
- (void)requestDidFinish:(id)sender {
    
}


-(void)clientLogin:(NSString*)name password:(NSString*)pwd callBack:(id)callback {
    
    if (callback && [callback respondsToSelector:@selector(requestDidFinish:)] ) {
        
        
        [callback requestDidFinish:nil];
        
    }
    
}


@end
