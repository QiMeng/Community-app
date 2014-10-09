//
//  PageTelPhone.m
//  Community
//
//  Created by QiMENG on 14-9-29.
//  Copyright (c) 2014年 QiMENG_LYS. All rights reserved.
//

#import "PageTelPhone.h"

@implementation PageContainer

+ (id)itemFromDic:(NSDictionary *)dic {
    
    PageContainer * item = [[PageContainer alloc]init];
    
    item.name = [dic objectForKeyNotNull:@"name"];
    
    NSArray * telphones = [dic objectForKeyNotNull:@"telphones"];
    
    if (!item.telPhoneItems) {
        item.telPhoneItems = [NSMutableArray array];
    }
    [item.telPhoneItems removeAllObjects];
    for (NSDictionary * tempdic in telphones) {
        [item.telPhoneItems addObject:[TelPhone itemFromDic:tempdic]];
    }
    
    return item;
}

@end


@implementation TelPhone

+ (id)itemFromDic:(NSDictionary *)dic {
    
    TelPhone * item = [[TelPhone alloc]init];
    
    item.name = [dic objectForKeyNotNull:@"name"];
    item.telphone = [dic objectForKeyNotNull:@"telphone"];
    
    return item;
}

@end