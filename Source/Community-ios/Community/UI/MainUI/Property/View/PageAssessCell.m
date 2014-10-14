//
//  PageAssessCell.m
//  Community
//
//  Created by 永生刘 on 14/10/14.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "PageAssessCell.h"
#import <SDWebImage/UIImageView+WebCache.h>
@implementation PageAssessCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    iconImageView.image = [UIImage imageNamed:[_infoDic objectForKeyNotNull:@"icon"]];
//    [iconImageView setImageWithURL:nil placeholderImage:[_infoDic objectForKeyNotNull:@"icon"]];
    
    nameLabel.text = [_infoDic objectForKeyNotNull:@"name"];
    descLabel.text = [_infoDic objectForKeyNotNull:@"desc"];
    timeLabel.text = [_infoDic objectForKeyNotNull:@"time"];
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
