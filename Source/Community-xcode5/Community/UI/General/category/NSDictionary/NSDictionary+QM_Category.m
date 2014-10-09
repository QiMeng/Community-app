//
//  NSDictionary+QM_Category.m
//  JinHuaIPAD
//
//  Created by strongsoft on 14-7-3.
//  Copyright (c) 2014年 QiMeng_LYS. All rights reserved.
//

#import "NSDictionary+QM_Category.h"

@implementation NSDictionary (QM_Category)

- (id)objectForKeyNotNull:(id)key  {
    
    id object = [self objectForKey:key];
    if(object == [NSNull null])
		return nil;
    
    return  object;
    
}


@end
