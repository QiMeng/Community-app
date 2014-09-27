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

@property (nonatomic, strong) NSString * userName;
@property (nonatomic, strong) NSString * userPws;

+ (QMUserInfo *)shareInstance ;

//保存账号密码
- (void)saveUserName:(NSString *)name Pws:(NSString *)pws;
//获取用户名
- (NSString *)getUserName;
//获取密码
- (NSString *)getPassword;

@end
