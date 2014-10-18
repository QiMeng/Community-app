//
//  CarpoolCell01.m
//  Community
//
//  Created by 永生刘 on 14/10/16.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "CarpoolCell01.h"

@implementation CarpoolCell01

- (void)awakeFromNib {
    // Initialization code
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    iconImageView.image = [UIImage imageNamed:@"usercenter_img_headportrait"];
    
    titleLabel.text = [_infoDic objectForKeyNotNull:@"name"];
    subLabel.text = [_infoDic objectForKeyNotNull:@"content"];
    timeLabel.text = [_infoDic objectForKeyNotNull:@"time"];
    
    
}


- (IBAction)touchReply:(id)sender {
    
    if (self.delegate && [self.delegate respondsToSelector:@selector(carpoolRelpy:)]) {
        [self.delegate carpoolRelpy:_infoDic];
    }
    
    
}




- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
