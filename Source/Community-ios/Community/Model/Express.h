//
//  Express.h
//  Community
//
//  Created by 永生刘 on 14/10/13.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Express : NSObject

@property (nonatomic, assign) NSInteger id;          //
@property (nonatomic, copy) NSString * name;        //顺丰快递
@property (nonatomic, copy) NSString * accepter;    //收件人
@property (nonatomic, copy) NSString * totime;      //到达时间
@property (nonatomic, copy) NSString * fromtime;    //投递时间
@property (nonatomic, copy) NSString * poster;  //投递员
@property (nonatomic, copy) NSString * jobnum;  //工号
@property (nonatomic, copy) NSString * phone;   //联系电话
@property (nonatomic, copy) NSString * pwd;



+ (id)itemFromDic:(NSDictionary *)dic;

@end
