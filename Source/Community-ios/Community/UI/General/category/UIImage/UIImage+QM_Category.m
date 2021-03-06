//
//  UIImage+QM_Category.m
//  JinHuaIPAD
//
//  Created by QiMENG on 14-7-3.
//  Copyright (c) 2014年 QiMeng_LYS. All rights reserved.
//

#import "UIImage+QM_Category.h"

@implementation UIImage (QM_Category)


- (CGFloat)width
{
    return self.size.width;
}

- (CGFloat)height
{
    return self.size.height;
}

+ (UIImage*) createImageWithColor: (UIColor*) color
{
    CGRect rect=CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage*theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}

#pragma mark 返回拉伸好的图片
+ (UIImage *)imageAliquotsTensile:(NSString *)imgName {
    return [[UIImage imageNamed:imgName] imageAliquotsTensile];
}
+ (UIImage *)imageAliquotsTensile:(NSString *)imgName withLeft:(float)left top:(float)top{
    return [[UIImage imageNamed:imgName] imageAliquotsTensileLeft:left top:top];
}

#pragma mark -等分拉伸
- (UIImage *)imageAliquotsTensile {
    CGFloat leftCap = self.width * 0.5f;
    CGFloat topCap = self.height * 0.5f;
    return [self stretchableImageWithLeftCapWidth:leftCap topCapHeight:topCap];
}

- (UIImage *)imageAliquotsTensileLeft:(float)left top:(float)top {
    
    
    return [self stretchableImageWithLeftCapWidth:left topCapHeight:top];
    
}


@end
