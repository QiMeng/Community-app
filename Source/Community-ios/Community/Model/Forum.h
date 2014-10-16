//
//  Forum.h
//  Community
//
//  Created by 永生刘 on 14/10/16.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Forum : NSObject

@property (nonatomic , copy) NSString * title;
@property (nonatomic , copy) NSString * name;
@property (nonatomic , copy) NSString * time;
@property (nonatomic , strong) NSArray * replys;

+ (id)itemFromDic:(NSDictionary *)dic;
@end
