//
//  PageTelPhone.h
//  Community
//
//  Created by QiMENG on 14-9-29.
//  Copyright (c) 2014年 QiMENG_LYS. All rights reserved.
//

#import <Foundation/Foundation.h>

@class TelPhone;
@interface PageContainer : NSObject
@property(nonatomic, assign)NSInteger id;
@property(nonatomic, copy)NSString* name;
@property(nonatomic, strong)NSMutableArray * telPhoneItems;

+ (id)itemFromDic:(NSDictionary *)dic;

@end

@interface TelPhone : NSObject

@property(nonatomic, assign)NSInteger id;
@property(nonatomic, copy)NSString* name;
@property(nonatomic, copy)NSString* telphone;

+ (id)itemFromDic:(NSDictionary *)dic;

@end