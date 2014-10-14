//
//  PageHeaderCell.m
//  Community
//
//  Created by 永生刘 on 14/10/13.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "PageHeaderCell.h"
#import <SDWebImage/UIImageView+WebCache.h>
@implementation PageHeaderCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    titleLabel.text = _pagePhone.title;
    
    [iconImageView setImageWithURL:nil placeholderImage:[UIImage imageNamed:_pagePhone.icon]];
    commentLabel.text = [NSString stringWithFormat:@"%d",_pagePhone.comments];
    phoneLabel.text = [NSString stringWithFormat:@"%d",_pagePhone.phonenum];
  
    NSString * str = [_pagePhone.desc stringByReplacingOccurrencesOfString:@"\\n" withString:@"\n"];
    
    contentLabel.text = str;
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
