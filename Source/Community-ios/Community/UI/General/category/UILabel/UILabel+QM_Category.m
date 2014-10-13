//
//  UILabel+QM_Category.m
//  JinHuaIPAD
//
//  Created by QiMENG on 14-7-3.
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


//uilabel 多颜色
- (NSMutableAttributedString *)labelText:(NSString *)text goalText:(NSString *)goal color:(UIColor *)color {
    
    NSMutableAttributedString *attrTitle = [[NSMutableAttributedString alloc] initWithString:text];
    
    int length = 0;
    for (int i= 0; i<text.length; i++) {
        
        DLog(@"%@",[text substringFromIndex:i]);
        
        NSRange rang1 = [[text substringFromIndex:i] rangeOfString:goal];
        
        if (rang1.location != NSNotFound) {
            
            length = rang1.location+rang1.length;
            
            if (length<text.length) {
                i += length-1;
                
                [attrTitle addAttribute:NSForegroundColorAttributeName value:color range:NSMakeRange(i, rang1.length)];
            }
        }else {
            break;
        }
    }
    
    
    return attrTitle;
}


@end
