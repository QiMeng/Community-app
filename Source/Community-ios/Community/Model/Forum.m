//
//  Forum.m
//  Community
//
//  Created by 永生刘 on 14/10/16.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "Forum.h"

@implementation Forum

+ (id)itemFromDic:(NSDictionary *)dic {
    
    Forum * item = [[Forum alloc]init];

    item.name = [dic objectForKeyNotNull:@"name"];
    item.title = [dic objectForKeyNotNull:@"title"];
    item.time = [dic objectForKeyNotNull:@"time"];
    item.replys = [dic objectForKeyNotNull:@"replys"];
    
    return item;
}


@end
