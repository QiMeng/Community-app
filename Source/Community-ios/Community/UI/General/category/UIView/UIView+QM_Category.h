//
//  UIView+QM_Category.h
//  JinHuaIPAD
//
//  Created by QiMENG on 14-7-3.
//  Copyright (c) 2014年 QiMeng_LYS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (QM_Category)

- (void)setX:(float)x;
- (void)setY:(float)y;
- (void)setWidth:(float)width;
- (void)setHeight:(float)height;
- (CGFloat)top;
- (CGFloat)bottom;
- (CGFloat)left;
- (CGFloat)right;
- (CGFloat)width;
- (CGFloat)height;


//描边,圆角
- (void)viewLineColor:(UIColor *)color borderWidth:(float)border cornerRadius:(float)radiu;

@end
