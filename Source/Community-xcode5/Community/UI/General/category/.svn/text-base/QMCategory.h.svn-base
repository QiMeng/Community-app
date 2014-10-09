//
//  QMCategory.h
//  JinHuaIPAD
//
//  Created by strongsoft on 14-7-3.
//  Copyright (c) 2014年 QiMeng_LYS. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "UIView+QM_Category.h"
#import "UIButton+QM_Category.h"
#import "UIImage+QM_Category.h"
#import "UILabel+QM_Category.h"
#import "NSString+QM_Category.h"
#import "NSDictionary+QM_Category.h"

#import "UITextField+QM_Category.h"

#ifdef DEBUG
# define DLog(...) NSLog(__VA_ARGS__)
#else
# define DLog(...) /* */
#endif

#if ! __has_feature(objc_arc)

#define SAFE_RELEASE(__OBJECT) if((__OBJECT)!= nil) { [(__OBJECT) release]; (__OBJECT) = nil; }
#define QMAutorelease(__v) ([__v autorelease]);
#define QMRelease(__v) ([__v release]);

#else

#define SAFE_RELEASE(__v)
#define QMAutorelease(__v)
#define QMRelease(__v)

#endif

#define IOS7 ([[[UIDevice currentDevice] systemVersion] doubleValue]>=7.0)
#define RGBA(r, g, b,a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]

#define DEVICE_SCREEN_RECT  [UIScreen mainScreen].applicationFrame
#define DEVICE_SCREEN_HEIGHT [[UIScreen mainScreen] bounds].size.height
#define DEVICE_SCREEN_WIDTH [[UIScreen mainScreen] bounds].size.width


@protocol QMCategory <NSObject>

@end
