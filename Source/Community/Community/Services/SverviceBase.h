//
//  SverviceBase.h
//  Community
//
//  Created by PYL on 14-9-27.
//  Copyright (c) 2014年 QiMENG_LYS. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <ASIHTTPRequest.h>
#import <ASINetworkQueue.h>
#import <ASIFormDataRequest.h>
#import <JSONKit.h>

#define kASIUrl @"ASIUrl"
#define kASIName @"ASIName"
#define kASIData @"ASIData"

#define kSverviceInstance [SverviceBase shareInstance]

@interface SverviceBase : NSObject

+ (SverviceBase *)shareInstance ;



@end
