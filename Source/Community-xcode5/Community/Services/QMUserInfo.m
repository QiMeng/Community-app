//
//  QMUserInfo.m
//  Community
//
//  Created by QiMengJin on 14-9-28.
//  Copyright (c) 2014年 QiMENG_LYS. All rights reserved.
//

#import "QMUserInfo.h"

@implementation QMUserInfo
+ (QMUserInfo *)shareInstance {
    static QMUserInfo *__singletion;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        __singletion=[[self alloc] init];
        
    });
    return __singletion;
}

- (void)saveUserName:(NSString *)name Pws:(NSString *)pws {
    [[NSUserDefaults standardUserDefaults] setObject:name
                                              forKey:@"UserName"];
    [[NSUserDefaults standardUserDefaults] setObject:pws
                                              forKey:@"Password"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (NSString *)getUserName{
    
    return [[NSUserDefaults standardUserDefaults] stringForKey:@"UserName"];
}
- (NSString *)getPassword{
    return [[NSUserDefaults standardUserDefaults] stringForKey:@"Password"];
}



@end
