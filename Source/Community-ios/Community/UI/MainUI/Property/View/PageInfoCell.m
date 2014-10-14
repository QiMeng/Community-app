//
//  PageInfoCell.m
//  Community
//
//  Created by 永生刘 on 14/10/13.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "PageInfoCell.h"

@implementation PageInfoCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    if (selected) {
        tyepImageView.image = [UIImage imageNamed:@"property_btn_choose_hl"];
    }else {
        tyepImageView.image = [UIImage imageNamed:@"property_btn_choose_nor"];
    }
    
    
    // Configure the view for the selected state
}

@end
