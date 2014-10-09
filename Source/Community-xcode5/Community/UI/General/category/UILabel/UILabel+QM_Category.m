//
//  UILabel+QM_Category.m
//  JinHuaIPAD
//
//  Created by strongsoft on 14-7-3.
//  Copyright (c) 2014年 QiMeng_LYS. All rights reserved.
//

#import "UILabel+QM_Category.h"

#import "QMCategory.h"

@implementation UILabel (QM_Category)

#pragma mark - 创建 标签
+ (UILabel *)allocLabelFrame:(CGRect )frame
                        text:(NSString *)text
                        font:(UIFont *)font
                   textColor:(UIColor *)textColor
                     bgColor:(UIColor *)bgColor
              textAlignament:(NSTextAlignment)textAlignament
            autoresizingMask:(UIViewAutoresizing)autoresizingMask{
    
    
    UILabel * label = [[UILabel alloc]initWithFrame:frame];
    label.text = text;
    label.font = [UIFont fontWithName:kBaseFont size:font?font.pointSize:18];
//    label.font = font;
    label.textColor = textColor?textColor:[UIColor blackColor];
    label.backgroundColor = bgColor?bgColor:[UIColor clearColor];
    label.textAlignment = textAlignament;
    label.autoresizingMask = autoresizingMask;
    label.minimumScaleFactor = 10;
    
    QMAutorelease(label);
    return label;
}



@end
