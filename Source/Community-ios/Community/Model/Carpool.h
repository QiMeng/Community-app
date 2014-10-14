//
//  Carpool.h
//  Community
//
//  Created by 永生刘 on 14/10/15.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Carpool : NSObject


@property (nonatomic, copy) NSString * icon;
@property (nonatomic, assign) NSInteger type;
@property (nonatomic, copy) NSString * name;
@property (nonatomic, copy) NSString * address;
@property (nonatomic, copy) NSString * fromAddress;
@property (nonatomic, copy) NSString * toAddress;
@property (nonatomic, copy) NSString * fromTime;
@property (nonatomic, copy) NSString * updateTime;
@property (nonatomic, copy) NSString * reply;

@property (nonatomic, strong) NSArray * replys;

+ (id)itemFromDic:(NSDictionary *)dic;


@end
