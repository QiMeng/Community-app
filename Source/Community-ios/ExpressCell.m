//
//  ExpressCell.m
//  Community
//
//  Created by 永生刘 on 14/10/13.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "ExpressCell.h"

@implementation ExpressCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    titleLabel.text = _express.name;
    personLabel.text = [NSString stringWithFormat:@"收件人:%@",_express.accepter];
    pwdLabel.text = [NSString stringWithFormat:@"取件密钥:%@",_express.pwd];
    
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
