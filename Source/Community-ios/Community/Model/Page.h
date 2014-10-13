//
//  Page.h
//  Community
//
//  Created by 永生刘 on 14/10/13.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Page : NSObject

@property (nonatomic, assign) NSInteger id;          //公告id
@property (nonatomic, copy) NSString * title;    //标题
@property (nonatomic, copy) NSString * phone;//电话
@property (nonatomic, assign) NSInteger comments;   //评论数
@property (nonatomic, assign) NSInteger phonenum;   //电话数
@property (nonatomic, copy) NSString * icon;        //图标

+ (id)itemFromDic:(NSDictionary *)dic;


@end
