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
    item.title = [dic objectForKeyNotNull:@"title"];
    item.subTitle = [dic objectForKeyNotNull:@"subtitle"];
    item.updateTime = [dic objectForKeyNotNull:@"updatetime"];
    
    item.reply = [[dic objectForKeyNotNull:@"reply"] integerValue];
    
    return item;
}


@end
