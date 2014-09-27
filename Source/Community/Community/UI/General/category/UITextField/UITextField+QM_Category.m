//
//  UITextField+QM_Category.m
//  JinHuaIPAD
//
//  Created by strongsoft on 14-7-3.
//  Copyright (c) 2014年 QiMeng_LYS. All rights reserved.
//

#import "UITextField+QM_Category.h"

#import "QMCategory.h"

@implementation UITextField (QM_Category)


#pragma mark - 创建输入框:左边文字说明,右边图片显示
+ (UITextField *)allocTextFieldFrame:(CGRect)frame
                                text:(NSString *)text
                         placeholder:(NSString *)placeholder
                                font:(UIFont *)font
                           textColor:(UIColor *)textColor
                             bgColor:(UIColor *)bgColor
                            delegate:(id)delegate
                       returnKeyType:(UIReturnKeyType)returnKeyType
                    autoresizingMask:(UIViewAutoresizing)autoresizingMask
                            leftData:(id)leftData
                           leftWidth:(float)leftWidth
                           leftColor:(UIColor *)leftColor
                           rightData:(id)rightData
                          rightWidth:(float)rightWidth
                          rightColor:(UIColor *)rightColor
                          layerLineColor:(UIColor *)lineColor

{
    
    
    UITextField *textField =  [[UITextField alloc]initWithFrame:frame];
    textField.font = [UIFont fontWithName:kBaseFont size:textField.font.pointSize];
    textField.text = text;
    textField.placeholder = placeholder;
//    textField.font = font;
    textField.textColor = textColor?textColor:[UIColor blackColor];
    [textField setBackgroundColor:bgColor?bgColor:[UIColor clearColor]];
    textField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    textField.adjustsFontSizeToFitWidth=YES;
    textField.delegate = delegate;
    textField.returnKeyType = returnKeyType?returnKeyType:UIReturnKeyDone;
    textField.autoresizingMask = autoresizingMask?autoresizingMask:UIViewAutoresizingNone;
    
    if ([leftData isKindOfClass:[NSString class]]) {
        
        UILabel * leftLabel = [UILabel allocLabelFrame:CGRectMake(0, 0, leftWidth, frame.size.height)
                                                  text:leftData
                                                  font:font
                                             textColor:leftColor?leftColor:[UIColor blackColor]
                                               bgColor:bgColor?bgColor:[UIColor clearColor]
                                        textAlignament:NSTextAlignmentCenter
                                      autoresizingMask:UIViewAutoresizingNone];
        leftLabel.adjustsFontSizeToFitWidth = YES;
        leftLabel.minimumScaleFactor = 7;

        textField.leftView = leftLabel;
        textField.leftViewMode = UITextFieldViewModeAlways;
    }

    if ([rightData isKindOfClass:[UIImage class]]) {
        
        UIImageView * rightView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, rightWidth, textField.height)];
        rightView.image = rightData;
        rightView.contentMode = UIViewContentModeCenter;
        rightView.backgroundColor = rightColor?rightColor:[UIColor clearColor];
        textField.rightView = rightView;
        textField.rightViewMode = UITextFieldViewModeAlways;
        
        QMRelease(rightView);
        
    }
    
    if (lineColor) {
        
        [textField viewLineColor:lineColor borderWidth:1 cornerRadius:3];
        
    }
    
    QMAutorelease(textField);
    return textField;
}







@end
