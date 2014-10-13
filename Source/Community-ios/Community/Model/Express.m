//
//  Express.m
//  Community
//
//  Created by 永生刘 on 14/10/13.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "Express.h"

@implementation Express

+ (id)itemFromDic:(NSDictionary *)dic {
    
    Express * item = [[Express alloc]init];
    
    item.id = [[dic objectForKeyNotNull:@""] integerValue];
    item.name = [dic objectForKeyNotNull:@"name"];
    item.accepter = [dic objectForKeyNotNull:@"accepter"];
    item.totime = [dic objectForKeyNotNull:@"totime"];
    item.fromtime = [dic objectForKeyNotNull:@"fromtime"];
    item.poster = [dic objectForKeyNotNull:@"poster"];
    item.jobnum = [dic objectForKeyNotNull:@"jobnum"];
    item.phone = [dic objectForKeyNotNull:@"phone"];
    item.pwd = [dic objectForKeyNotNull:@"pwd"];
    
    return item;
}


@end
