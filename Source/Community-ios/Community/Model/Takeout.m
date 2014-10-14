//
//  Takeout.m
//  Community
//
//  Created by 永生刘 on 14/10/15.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "Takeout.h"

@implementation Takeout

+ (id)itemFromDic:(NSDictionary *)dic {
    
    Takeout * item = [[Takeout alloc]init];
    

    item.name = [dic objectForKeyNotNull:@"name"];
    item.icon = [dic objectForKeyNotNull:@"icon"];
    
    item.price = [[dic objectForKeyNotNull:@"price"] floatValue];
    item.amount = [[dic objectForKeyNotNull:@"amount"] floatValue];
    
    return item;
}


@end
