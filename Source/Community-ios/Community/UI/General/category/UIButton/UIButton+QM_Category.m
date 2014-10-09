//
//  UIButton+QM_Category.m
//  JinHuaIPAD
//
//  Created by strongsoft on 14-7-3.
//  Copyright (c) 2014年 QiMeng_LYS. All rights reserved.
//

#import "UIButton+QM_Category.h"

#import "QMCategory.h"

@implementation UIButton (QM_Category)

#pragma mark - 创建按钮,正常效果跟点击之后的效果
+ (UIButton * )allocButtonFrame:(CGRect )frame
                    normalTitle:(NSString *)normalTitle
                  selectedTitle:(NSString *)selectedTitle
               normalTitleColor:(UIColor *)normalTitleColor
             selectedTitleColor:(UIColor *)selectedTitleColor
                backgroundColor:(UIColor *)backgroundColor
                      titleFont:(UIFont*)titleFont
                    normalImage:(UIImage *)normalImage
                  selectedImage:(UIImage *)selectedImage
                  normalBgImage:(UIImage *)normalBgImage
                selectedBgImage:(UIImage *)selectedBgImage
                         target:(id)target
                       selector:(SEL)selector
               autoresizingMask:(UIViewAutoresizing)autoresizingMask

{
    UIButton *button = [[UIButton alloc] initWithFrame:frame];
    
    [button setTitle:normalTitle forState:UIControlStateNormal];
    [button setTitle:selectedTitle forState:UIControlStateSelected];
    
    [button setTitleColor:normalTitleColor?normalTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setTitleColor:selectedTitleColor?selectedTitleColor:[UIColor blackColor] forState:UIControlStateSelected];
    
    button.titleLabel.font = titleFont?titleFont: [UIFont boldSystemFontOfSize:button.titleLabel.font.pointSize];
    
    button.backgroundColor = backgroundColor?backgroundColor:[UIColor clearColor];
    
    if (normalImage) [button setImage:normalImage forState:UIControlStateNormal];
    
    if (selectedImage) [button setImage:selectedImage forState:UIControlStateSelected];
    
    if (normalBgImage) [button setBackgroundImage:[normalBgImage imageAliquotsTensile] forState:UIControlStateNormal];
    if (selectedBgImage) [button setBackgroundImage:[selectedBgImage imageAliquotsTensile] forState:UIControlStateSelected];
    
    button.autoresizingMask = autoresizingMask;
    
    [button addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    QMAutorelease(button);
    return button;
}

+ (UIButton * )allocButtonFrame:(CGRect )frame
                    normalTitle:(NSString *)normalTitle
                  selectedTitle:(NSString *)selectedTitle
               normalTitleColor:(UIColor *)normalTitleColor
             selectedTitleColor:(UIColor *)selectedTitleColor
                backgroundColor:(UIColor *)backgroundColor
                      titleFont:(UIFont*)titleFont
                    normalImage:(UIImage *)normalImage
                  selectedImage:(UIImage *)selectedImage
                         image1:(UIImage *)image1
                         target:(id)target
                       selector:(SEL)selector
               autoresizingMask:(UIViewAutoresizing)autoresizingMask

{
    UIButton *button = [[UIButton alloc] initWithFrame:frame];
    
    [button setTitle:normalTitle forState:UIControlStateNormal];
    [button setTitle:selectedTitle forState:UIControlStateSelected];
    
    [button setTitleColor:normalTitleColor?normalTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setTitleColor:selectedTitleColor?selectedTitleColor:[UIColor blackColor] forState:UIControlStateSelected];
    
    button.titleLabel.font = titleFont?titleFont: [UIFont boldSystemFontOfSize:button.titleLabel.font.pointSize];
    
    [button setTitleEdgeInsets:UIEdgeInsetsMake(0, 20, 0, 0)];
    
    button.backgroundColor = backgroundColor?backgroundColor:[UIColor clearColor];
    
    
    [button setImage:normalImage forState:UIControlStateNormal];
    [button setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
    
	[button setImage:selectedImage forState:UIControlStateSelected];
	[button setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
    
    UIImageView * icon = [[UIImageView alloc]initWithFrame:CGRectMake(20, 0, 20, frame.size.height)];
    icon.image = image1;
    icon.contentMode = UIViewContentModeScaleAspectFit;
    [button addSubview:icon];
    
    
    
    button.autoresizingMask = autoresizingMask;
    
    [button addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    QMAutorelease(button);
    return button;
}

+ (UIButton * )allocButtonFrame:(CGRect )frame
                  normalBgImage:(UIImage *)normalBgImage
                selectedBgImage:(UIImage *)selectedBgImage
                         target:(id)target
                       selector:(SEL)selector {
    
    UIButton * btn= [UIButton allocButtonFrame:frame
                                   normalTitle:@""
                                 selectedTitle:@""
                              normalTitleColor:nil
                            selectedTitleColor:nil
                               backgroundColor:nil
                                     titleFont:nil
                                   normalImage:nil
                                 selectedImage:nil
                                 normalBgImage:normalBgImage
                               selectedBgImage:selectedBgImage
                                        target:target
                                      selector:selector
                              autoresizingMask:UIViewAutoresizingNone];
    
    return btn;
    
}



@end
