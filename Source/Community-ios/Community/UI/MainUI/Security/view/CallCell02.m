//
//  CallCell02.m
//  Community
//
//  Created by 永生刘 on 14/10/18.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "CallCell02.h"

@implementation CallCell02

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    if (selected) {
        _iconImageView.image = [UIImage imageNamed:@"safe_ico_choose"];
    }else {
        _iconImageView.image = nil;
    }
    
    
    // Configure the view for the selected state
}

@end
