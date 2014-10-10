//
//  UIButton+QM_Category.h
//  JinHuaIPAD
//
//  Created by QiMENG on 14-7-3.
//  Copyright (c) 2014年 QiMeng_LYS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (QM_Category)

/**
 *  创建按钮,正常效果跟点击之后的效果
 *
 *  @param frame              大小
 *  @param normalTitle        未标题
 *  @param selectedTitle      选中标题
 *  @param normalTitleColor   正常标题颜色
 *  @param selectedTitleColor 选中标题颜色
 *  @param backgroundColor    背景颜色
 *  @param titleFont          标题字体
 *  @param normalImage        正常图片
 *  @param selectedImage      选中图片
 *  @param normalBgImage      正常背景图片
 *  @param selectedBgImage    选中背景图片
 *  @param target             target description
 *  @param selector           回调方法
 *  @param autoresizingMask   autoresizingMask description
 *
 *  @return return value description
 */
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
               autoresizingMask:(UIViewAutoresizing)autoresizingMask;


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
               autoresizingMask:(UIViewAutoresizing)autoresizingMask;

/**
 *  无字体,背景,选中
 *
 *  @param frame           <#frame description#>
 *  @param normalBgImage   <#normalBgImage description#>
 *  @param selectedBgImage <#selectedBgImage description#>
 *  @param target          <#target description#>
 *  @param selector        <#selector description#>
 *
 *  @return <#return value description#>
 */
+ (UIButton * )allocButtonFrame:(CGRect )frame
                  normalBgImage:(UIImage *)normalBgImage
                selectedBgImage:(UIImage *)selectedBgImage
                         target:(id)target
                       selector:(SEL)selector;

/**
 *  有文字,image , 选中
 */
+ (UIButton * )allocButtonFrame:(CGRect )frame
                    normalTitle:(NSString *)normalTitle
                  selectedTitle:(NSString *)selectedTitle
               normalTitleColor:(UIColor *)normalTitleColor
             selectedTitleColor:(UIColor *)selectedTitleColor
                    normalImage:(UIImage *)normalImage
                  selectedImage:(UIImage *)selectedImage
                         target:(id)target
                       selector:(SEL)selector;


@end
