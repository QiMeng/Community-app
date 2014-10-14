//
//  Page.m
//  Community
//
//  Created by 永生刘 on 14/10/13.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "Page.h"

@implementation Page

+ (id)itemFromDic:(NSDictionary *)dic {
    
    Page * item = [[Page alloc]init];
    
    item.id = [[dic objectForKeyNotNull:@""] integerValue];
    item.title = [dic objectForKeyNotNull:@"title"];
    item.phone = [dic objectForKeyNotNull:@"phone"];
    item.comments = [[dic objectForKeyNotNull:@"comments"] integerValue];
    
    item.phonenum = [[dic objectForKeyNotNull:@"phonenum"] integerValue];
    item.icon = [dic objectForKeyNotNull:@"icon"];
    item.desc = [dic objectForKeyNotNull:@"description"];
    
    item.assess = [NSArray arrayWithArray:[dic objectForKeyNotNull:@"assess"]];
    
    return item;
}

@end
