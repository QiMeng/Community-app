//
//  UILabel+QM_Category.h
//  JinHuaIPAD
//
//  Created by QiMENG on 14-7-3.
//  Copyright (c) 2014年 QiMeng_LYS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (QM_Category)

/**
 *  创建普通标签
 *
 *  @param frame            大小
 *  @param text             标题
 *  @param font             字体
 *  @param textColor        字体颜色
 *  @param bgColor          背景颜色
 *  @param textAlignament   对齐方式
 *  @param autoresizingMask autoresizingMask description
 *
 *  @return 标签
 */
+ (UILabel *)allocLabelFrame:(CGRect )frame
                        text:(NSString *)text
                        font:(UIFont *)font
                   textColor:(UIColor *)textColor
                     bgColor:(UIColor *)bgColor
              textAlignament:(NSTextAlignment)textAlignament
            autoresizingMask:(UIViewAutoresizing)autoresizingMask;


@end
