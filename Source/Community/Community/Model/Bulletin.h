//
//  Bulletin.h
//  Community
//
//  Created by QiMENG on 14-9-28.
//  Copyright (c) 2014年 QiMENG_LYS. All rights reserved.
//
//  社区公告

#import <Foundation/Foundation.h>

@interface Bulletin : NSObject


@property (nonatomic, assign) long id;          //公告id
@property (nonatomic, copy) NSString * name;    //标题
@property (nonatomic, copy) NSString * description;//简介
@property (nonatomic, copy) NSString * updateTime;  //最新时间




@end
