//
//  PaymentCell02.m
//  Community
//
//  Created by 永生刘 on 14/10/13.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "PaymentCell02.h"

@implementation PaymentCell02

- (void)awakeFromNib {
    // Initialization code
}


- (void)layoutSubviews {
    [super layoutSubviews];
    
    nameLabel.text = [_infoDic objectForKeyNotNull:@"name"];
    timeLabel.text = [NSString stringWithFormat:@"%@ 至 %@",[_infoDic objectForKeyNotNull:@"fromtime"],[_infoDic objectForKeyNotNull:@"totime"]];
    priceLabel.text = [_infoDic objectForKeyNotNull:@"price"];
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
