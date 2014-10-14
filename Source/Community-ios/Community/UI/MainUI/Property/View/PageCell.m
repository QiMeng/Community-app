//
//  PageCell.m
//  Community
//
//  Created by QiMENG on 14-9-29.
//  Copyright (c) 2014年 QiMENG_LYS. All rights reserved.
//  社区黄页

#import "PageCell.h"
#import <SDWebImage/UIImageView+WebCache.h>
@implementation PageCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    titleLabel.text = _pagePhone.title;
    
    [iconImageView setImageWithURL:nil placeholderImage:[UIImage imageNamed:_pagePhone.icon]];
    commentLabel.text = [NSString stringWithFormat:@"%d",_pagePhone.comments];
    phoneLabel.text = [NSString stringWithFormat:@"%d",_pagePhone.phonenum];
    
    [callBtn setBackgroundImage:[UIImage imageAliquotsTensile:@"property_btn_tel_nor"] forState:UIControlStateNormal];
        [callBtn setBackgroundImage:[UIImage imageAliquotsTensile:@"property_btn_tel_hl"] forState:UIControlStateHighlighted];
    
    [callBtn setTitle:_pagePhone.phone forState:UIControlStateNormal];
    
}

#pragma mark - 拨打电话
- (IBAction)touchCall:(id)sender {
    if (self.delegate && [self.delegate respondsToSelector:@selector(callTelPhone:)]) {
        [self.delegate callTelPhone:_pagePhone.phone];
    }
}




- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
