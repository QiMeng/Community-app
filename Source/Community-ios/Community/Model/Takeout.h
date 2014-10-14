//
//  Takeout.h
//  Community
//
//  Created by 永生刘 on 14/10/15.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Takeout : NSObject

@property (nonatomic, copy) NSString * name;
@property (nonatomic, copy) NSString * icon;
@property (nonatomic, assign) float price;
@property (nonatomic, assign) int amount;

+ (id)itemFromDic:(NSDictionary *)dic;

@end
