//
//  ForumCell.m
//  Community
//
//  Created by 永生刘 on 14/10/16.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "ForumCell.h"

@implementation ForumCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    titleLabel.text = _forum.title;
    nameLabel.text = _forum.name;
    timeLabel.text = _forum.time;
    
    replyLabel.text = [NSString stringWithFormat:@"%d回复",_forum.replys.count];
    
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
