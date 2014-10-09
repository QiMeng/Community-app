//
//  UIImage+QM_Category.h
//  JinHuaIPAD
//
//  Created by QiMENG on 14-7-3.
//  Copyright (c) 2014年 QiMeng_LYS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (QM_Category)

- (CGFloat)width;
- (CGFloat)height;


/**
 *  返回拉伸好的图片
 *
 *  @param imgName 图片名称
 *
 *  @return return value description
 */
+ (UIImage *)imageAliquotsTensile:(NSString *)imgName;

+ (UIImage *)imageAliquotsTensile:(NSString *)imgName withLeft:(float)left top:(float)top;

/**
 *  等分拉伸
 *
 *  @param  description
 *
 *  @return return value description
 */
//
- (UIImage *)imageAliquotsTensile;


- (UIImage *)imageAliquotsTensileLeft:(float)left top:(float)top;


@end
