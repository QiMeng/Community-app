//
//  VerticalButton.m
//  m2048
//
//  Created by QiMengJin on 14-5-8.
//  Copyright (c) 2014年 QiMengJin_LYS. All rights reserved.
//

#import "VerticalButton.h"

@implementation VerticalButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)layoutSubviews {

    [super layoutSubviews];

    // Center image

    CGPoint center = self.imageView.center;

    center.x = self.frame.size.width/2;

    center.y = self.imageView.frame.size.height/2;

    self.imageView.center = center;

    //Center text

    CGRect newFrame = [self titleLabel].frame;

    newFrame.origin.x = 0;

    newFrame.origin.y = self.imageView.frame.size.height + 5;

    newFrame.size.width = self.frame.size.width;

    self.titleLabel.frame = newFrame;

    self.titleLabel.textAlignment = NSTextAlignmentCenter;

}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
