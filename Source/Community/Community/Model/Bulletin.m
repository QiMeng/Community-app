//
//  Bulletin.m
//  Community
//
//  Created by QiMENG on 14-9-28.
//  Copyright (c) 2014年 QiMENG_LYS. All rights reserved.
//

#import "Bulletin.h"

@implementation Bulletin

+ (id)itemFromDic:(NSDictionary *)dic {
    
    Bulletin * item = [[Bulletin alloc]init];
    
    item.id = [[dic objectForKeyNotNull:@""] integerValue];
    item.name = [dic objectForKeyNotNull:@""];
    item.description = [dic objectForKeyNotNull:@""];
    item.updateTime = [dic objectForKeyNotNull:@""];
    
    return item;
}


@end
