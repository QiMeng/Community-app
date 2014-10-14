//
//  Carpool.m
//  Community
//
//  Created by 永生刘 on 14/10/15.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "Carpool.h"

@implementation Carpool

+ (id)itemFromDic:(NSDictionary *)dic {
    
    Carpool * item = [[Carpool alloc]init];
    
    
    item.name = [dic objectForKeyNotNull:@"name"];
    item.icon = [dic objectForKeyNotNull:@"icon"];
    
    item.type = [[dic objectForKeyNotNull:@"type"] integerValue];
    item.address = [dic objectForKeyNotNull:@"address"];
    item.fromAddress = [dic objectForKeyNotNull:@"fromAddress"];
    item.toAddress = [dic objectForKeyNotNull:@"toAddress"];
    item.fromTime = [dic objectForKeyNotNull:@"fromTime"];
    item.updateTime = [dic objectForKeyNotNull:@"updateTime"];
    item.reply = [dic objectForKeyNotNull:@"reply"];
    
    item.replys = [dic objectForKeyNotNull:@"replys"];
    
    return item;
}


@end
