//
//  Payment.m
//  Community
//
//  Created by 永生刘 on 14/10/13.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "Payment.h"

@implementation Payment

+ (id)itemFromDic:(NSDictionary *)dic {
    
    Payment * item = [[Payment alloc]init];
    
    item.id = [[dic objectForKeyNotNull:@""] integerValue];
    item.name = [dic objectForKeyNotNull:@"name"];
    item.list = [dic objectForKeyNotNull:@"list"];
    
    item.time = [dic objectForKeyNotNull:@"time"];
    item.price = [dic objectForKeyNotNull:@"price"];
    
    item.records = [dic objectForKeyNotNull:@"records"];

    return item;
}

@end
