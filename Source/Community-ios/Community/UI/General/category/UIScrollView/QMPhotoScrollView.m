//
//  QMPhotoScrollView.m
//  Community
//
//  Created by 永生刘 on 14/10/13.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "QMPhotoScrollView.h"
#define  INSETS 10
#import <QuartzCore/QuartzCore.h>

@implementation QMPhotoScrollView


- (void)layoutSubviews {
    [super layoutSubviews];
    
    if (!self.images) {
        self.images = [NSMutableArray array];
    }
    
    if (!plusBtn) {
        plusBtn = [UIButton allocButtonFrame:CGRectMake(0, 0, self.height, self.height)
                                 normalTitle:@""
                               selectedTitle:@""
                            normalTitleColor:nil
                          selectedTitleColor:nil
                                 normalImage:[UIImage imageNamed:@"property_btn_add_nor"]
                               selectedImage:nil
                                      target:self
                                    selector:@selector(addPic:)];
        
        [self addSubview:plusBtn];
    }
    

    
    [self refreshScrollView];
}

- (void)refreshScrollView
{
    CGFloat width=(self.height+10)*(self.images.count)<(self.width-20)?self.width:self.height+self.images.count*self.height;
    
    CGSize contentSize=CGSizeMake(width, self.height);
    [self setContentSize:contentSize];
    [self setContentOffset:CGPointMake(width<self.width?0:width-self.width, 0) animated:YES];
    
}

- (void)clearPics:(id)sender {
    for (UIImageView *img in self.images)
    {
        [img removeFromSuperview];
    }
    [self.images removeAllObjects];
    
    CABasicAnimation *positionAnim=[CABasicAnimation animationWithKeyPath:@"position"];
    [positionAnim setFromValue:[NSValue valueWithCGPoint:CGPointMake(plusBtn.center.x, plusBtn.center.y)]];
    [positionAnim setToValue:[NSValue valueWithCGPoint:CGPointMake(INSETS+self.height/2.0, plusBtn.center.y)]];
    [positionAnim setDelegate:self];
    [positionAnim setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    [positionAnim setDuration:0.25f];
    
    [plusBtn.layer addAnimation:positionAnim forKey:nil];
    
    [plusBtn setCenter:CGPointMake(INSETS+self.height/2.0, plusBtn.center.y)];
    [self refreshScrollView];
}
- (IBAction)addPic:(id)sender {
    
    //移动添加按钮
    CABasicAnimation *positionAnim=[CABasicAnimation animationWithKeyPath:@"position"];
    [positionAnim setFromValue:[NSValue valueWithCGPoint:CGPointMake(plusBtn.center.x, plusBtn.center.y)]];
    [positionAnim setToValue:[NSValue valueWithCGPoint:CGPointMake(plusBtn.center.x+INSETS+self.height, plusBtn.center.y)]];
    [positionAnim setDelegate:self];
    [positionAnim setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    [positionAnim setDuration:0.25f];
    [plusBtn.layer addAnimation:positionAnim forKey:nil];
    [plusBtn setCenter:CGPointMake(plusBtn.center.x+INSETS+self.height, plusBtn.center.y)];
    
    //添加图片
    UIImageView *aImageView=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"property_icon_right"]];
    [aImageView setFrame:CGRectMake(INSETS-90, 0, self.height, self.height)];
    [self.images addObject:aImageView];
    [self addSubview:aImageView];
    
    for (UIImageView *img in self.images) {
        
        CABasicAnimation *positionAnim=[CABasicAnimation animationWithKeyPath:@"position"];
        [positionAnim setFromValue:[NSValue valueWithCGPoint:CGPointMake(img.center.x, img.center.y)]];
        [positionAnim setToValue:[NSValue valueWithCGPoint:CGPointMake(img.center.x+INSETS+self.height, img.center.y)]];
        [positionAnim setDelegate:self];
        [positionAnim setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
        [positionAnim setDuration:0.25f];
        [img.layer addAnimation:positionAnim forKey:nil];
        
        [img setCenter:CGPointMake(img.center.x+INSETS+self.height, img.center.y)];
    }
    
    
    
    [self refreshScrollView];
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
