//
//  QMUserInfo.h
//  Community
//
//  Created by QiMengJin on 14-9-28.
//  Copyright (c) 2014年 QiMENG_LYS. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kQMUserInfo [QMUserInfo shareInstance]

@interface QMUserInfo : NSObject

@property (nonatomic, copy) NSString * userName;
@property (nonatomic, copy) NSString * userPws;

@property (nonatomic, copy) NSString * area;
@property (nonatomic, copy) NSString * community;
@property (nonatomic, copy) NSString * floor;
@property (nonatomic, copy) NSString * unit;
@property (nonatomic, copy) NSString * phone;


@property (nonatomic, copy) NSString * signarea;
@property (nonatomic, copy) NSString * signcommunity;
@property (nonatomic, copy) NSString * signfloor;
@property (nonatomic, copy) NSString * signunit;
@property (nonatomic, copy) NSString * signphone;


+ (QMUserInfo *)shareInstance ;

//保存账号密码
- (void)saveUserName:(NSString *)name Pws:(NSString *)pws;
//获取用户名
- (NSString *)getUserName;
//获取密码
- (NSString *)getPassword;


- (void)clearSign;

@end
