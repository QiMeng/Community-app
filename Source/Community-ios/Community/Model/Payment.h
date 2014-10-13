//
//  Payment.h
//  Community
//
//  Created by 永生刘 on 14/10/13.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Payment : NSObject
@property (nonatomic, assign) NSInteger id;          //
@property (nonatomic, copy) NSString * name;
@property (nonatomic, strong) NSArray * list;
@property (nonatomic, strong) NSArray * records;
@property (nonatomic, copy) NSString * time;
@property (nonatomic, copy) NSString * price;



+ (id)itemFromDic:(NSDictionary *)dic;

@end
